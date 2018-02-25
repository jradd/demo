from flask_zurb_foundation import Foundation

from app import app


if __name__ == '__main__':
 app = app.run(debug=True, host='0.0.0.0')
 Foundation(app)
