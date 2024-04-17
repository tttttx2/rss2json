from flask import Flask, request, jsonify
import feedparser

app = Flask(__name__)

@app.route('/', methods=['GET'])
def get_rss():
    rss_url = request.args.get('url')
    if rss_url:
        feed = feedparser.parse(rss_url)
        return jsonify(feed.entries)
    else:
        return jsonify({'error': 'URL parameter is missing.'}), 400

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000)
