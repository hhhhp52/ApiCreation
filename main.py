from flask import Flask, request, make_response, jsonify


application = Flask(__name__)


@application.route('/greet', methods=['GET'])
def greet():
    data = request.args.to_dict()
    name = data.get("name", "World")

    return make_response(
        jsonify(
            {
                "message": f"Hello, {name}!"
            }
        )
    )


if __name__ == '__main__':
    application.run()
