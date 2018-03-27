# thrift-test

## To run on your own machine:
Ensure you have thrift installed.  On the Mac, you can run <br>
`brew install thrift`<br>
<br>
Then to generate the thrift files:<br>
`thrift -r -gen py tutorial.thrift`<br>
<br>
<br>
Finally:<br>
`pip install -r requirements.txt`<br>
<br>
And open `client.py`, and change the line:<br>
`host='server', port=9090` to `host='localhost', port=9090`<br>
<br>
<br>
Then open two terminals: <br>

**Terminal 1**<br>
`python server.py`

**Terminal 2**<br>
`python client.py`

## To run in docker:<br>
`docker-compose up --build`
Ah... Much simpler.
