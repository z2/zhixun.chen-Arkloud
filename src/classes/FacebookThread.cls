//
// Generated by JSON2Apex http://json2apex.herokuapp.com/
//

public class FacebookThread {
	public class Comments {
		public List<FacebookMessage> data {get;set;}
		public Paging paging {get;set;}

		public Comments(JSONParser parser) {
			while (parser.nextToken() != JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != JSONToken.VALUE_NULL) {
						if (text == 'data') {
							data = new List<FacebookMessage>();
							while (parser.nextToken() != JSONToken.END_ARRAY) {
								data.add(new FacebookMessage(parser));
							}
						} else if (text == 'paging') {
							paging = new Paging(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Comments consuming unrecognized property: '+text);
							FacebookUtil.consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Fields {
		public String name {get;set;}
		public String description {get;set;}

		public Fields(JSONParser parser) {
			while (parser.nextToken() != JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != JSONToken.VALUE_NULL) {
						if (text == 'name') {
							name = parser.getText();
						} else if (text == 'description') {
							description = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Fields consuming unrecognized property: '+text);
							FacebookUtil.consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Paging {
		public String previous {get;set;}
		public String next {get;set;}

		public Paging(JSONParser parser) {
			while (parser.nextToken() != JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != JSONToken.VALUE_NULL) {
						if (text == 'previous') {
							previous = parser.getText();
						} else if (text == 'next') {
							next = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Paging consuming unrecognized property: '+text);
							FacebookUtil.consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public String id {get;set;}
	public To to {get;set;}
	public String updated_time {get;set;}
	public Integer unread {get;set;}
	public Integer unseen {get;set;}
	public Comments comments {get;set;}
	public Metadata metadata {get;set;}

	public FacebookThread(JSONParser parser) {
		while (parser.nextToken() != JSONToken.END_OBJECT) {
			if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
				String text = parser.getText();
				if (parser.nextToken() != JSONToken.VALUE_NULL) {
					if (text == 'id') {
						id = parser.getText();
					} else if (text == 'to') {
						to = new To(parser);
					} else if (text == 'updated_time') {
						updated_time = parser.getText();
					} else if (text == 'unread') {
						unread = parser.getIntegerValue();
					} else if (text == 'unseen') {
						unseen = parser.getIntegerValue();
					} else if (text == 'comments') {
						comments = new Comments(parser);
					} else if (text == 'metadata') {
						metadata = new Metadata(parser);
					} else {
						System.debug(LoggingLevel.WARN, 'Root consuming unrecognized property: '+text);
						FacebookUtil.consumeObject(parser);
					}
				}
			}
		}
	}
	
	public class To {
		public List<FacebookRef> data {get;set;}

		public To(JSONParser parser) {
			while (parser.nextToken() != JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != JSONToken.VALUE_NULL) {
						if (text == 'data') {
							data = new List<FacebookRef>();
							while (parser.nextToken() != JSONToken.END_ARRAY) {
								data.add(new FacebookRef(parser));
							}
						} else {
							System.debug(LoggingLevel.WARN, 'To consuming unrecognized property: '+text);
							FacebookUtil.consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Metadata {
		public Connections connections {get;set;}
		public List<Fields> fields {get;set;}
		public String type {get;set;}

		public Metadata(JSONParser parser) {
			while (parser.nextToken() != JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != JSONToken.VALUE_NULL) {
						if (text == 'connections') {
							connections = new Connections(parser);
						} else if (text == 'fields') {
							fields = new List<Fields>();
							while (parser.nextToken() != JSONToken.END_ARRAY) {
								fields.add(new Fields(parser));
							}
						} else if (text == 'type') {
							type = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Metadata consuming unrecognized property: '+text);
							FacebookUtil.consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Connections {
		public String comments {get;set;}

		public Connections(JSONParser parser) {
			while (parser.nextToken() != JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != JSONToken.VALUE_NULL) {
						if (text == 'comments') {
							comments = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Connections consuming unrecognized property: '+text);
							FacebookUtil.consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	
	public static FacebookThread parse(String json) {
		return new FacebookThread(System.JSON.createParser(json));
	}
	
	// This test method should give 100% coverage
	static testMethod void testParse() {
		String json = '{'+
		'      \"id\": \"253427978039731\", '+
		'      \"to\": {'+
		'        \"data\": ['+
		'          {'+
		'            \"name\": \"Pat Patterson\", '+
		'            \"id\": \"667905711\"'+
		'          }, '+
		'          {'+
		'            \"name\": \"A User\", '+
		'            \"id\": \"132123123\"'+
		'          }'+
		'        ]'+
		'      }, '+
		'      \"updated_time\": \"2012-09-01T13:42:46+0000\", '+
		'      \"unread\": 0, '+
		'      \"unseen\": 0, '+
		'      \"comments\": {'+
		'        \"data\": ['+
		'          {'+
		'            \"id\": \"253427978039731_254\", '+
		'            \"from\": {'+
		'              \"name\": \"Pat Patterson\", '+
		'              \"id\": \"667905711\"'+
		'            }, '+
		'            \"message\": \"A message\", '+
		'            \"created_time\": \"2012-05-01T17:43:39+0000\"'+
		'          }, '+
		'          {'+
		'            \"id\": \"253427978039731_255\", '+
		'            \"from\": {'+
		'              \"name\": \"Pat Patterson\", '+
		'              \"id\": \"667905711\"'+
		'            }, '+
		'            \"message\": \"Another message\", '+
		'            \"created_time\": \"2012-05-01T17:43:44+0000\"'+
		'          }'+
		'        ], '+
		'        \"paging\": {'+
		'          \"previous\": \"https://graph.facebook.com/253427978039731/comments?limit=25&since=1346506966\", '+
		'          \"next\": \"https://graph.facebook.com/253427978039731/comments?limit=25&until=1346506966\"'+
		'        }'+
		'      }, '+
		'      \"metadata\": {'+
		'        \"connections\": {'+
		'          \"comments\": \"https://graph.facebook.com/253427978039731/comments?access_token=GDUFYUDWGUIDPWHUIDOGDYIOGWD\"'+
		'        }, '+
		'        \"fields\": ['+
		'          {'+
		'            \"name\": \"id\", '+
		'            \"description\": \"The unique ID for this message thread. `read_mailbox`. `string`.\"'+
		'          }, '+
		'          {'+
		'            \"name\": \"snippet\", '+
		'            \"description\": \"Fragment of the thread for use in thread lists. `read_mailbox`. `string`.\"'+
		'          }, '+
		'          {'+
		'            \"name\": \"updated_time\", '+
		'            \"description\": \"Timestamp of when the thread was last updated. `read_mailbox`. `string` containing ISO-8601 date-time\"'+
		'          }, '+
		'          {'+
		'            \"name\": \"message_count\", '+
		'            \"description\": \"Number of messages in the thread. `read_mailbox`. `integer`.\"'+
		'          }, '+
		'          {'+
		'            \"name\": \"unread_count\", '+
		'            \"description\": \"Number of unread messages in the thread. `read_mailbox`. `integer`.\"'+
		'          }, '+
		'          {'+
		'            \"name\": \"tags\", '+
		'            \"description\": \"Thread tags. `read_mailbox`. `array` of objects containing `name`\"'+
		'          }, '+
		'          {'+
		'            \"name\": \"participants\", '+
		'            \"description\": \"List of the thread participants. `read_mailbox`. `array` of objects each containing `name`, `email`, and Facebook `id` (if available).\"'+
		'          }, '+
		'          {'+
		'            \"name\": \"former_participants\", '+
		'            \"description\": \"List of former thread participants who have unsubscribed from the thread. `read_mailbox`. `array` of objects each containing `name`, `email`, and Facebook `id` (if available).\"'+
		'          }, '+
		'          {'+
		'            \"name\": \"senders\", '+
		'            \"description\": \"List of participants who have sent a message in the thread. `read_mailbox`. `array` of objects each containing `name`, `email`, and Facebook `id` (if available).\"'+
		'          }, '+
		'          {'+
		'            \"name\": \"messages\", '+
		'            \"description\": \"List of the message objects contained in this thread. `read_mailbox`. `array` of `message` objects.\"'+
		'          }'+
		'        ], '+
		'        \"type\": \"thread\"'+
		'      }'+
		'    }';
		FacebookThread r = parse(json);
		System.assert(r != null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		Comments objComments = new Comments(System.JSON.createParser(json));
		System.assert(objComments != null);
		System.assert(objComments.data == null);
		System.assert(objComments.paging == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		Fields objFields = new Fields(System.JSON.createParser(json));
		System.assert(objFields != null);
		System.assert(objFields.name == null);
		System.assert(objFields.description == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		Paging objPaging = new Paging(System.JSON.createParser(json));
		System.assert(objPaging != null);
		System.assert(objPaging.previous == null);
		System.assert(objPaging.next == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		FacebookThread objRoot = new FacebookThread(System.JSON.createParser(json));
		System.assert(objRoot != null);
		System.assert(objRoot.id == null);
		System.assert(objRoot.to == null);
		System.assert(objRoot.updated_time == null);
		System.assert(objRoot.unread == null);
		System.assert(objRoot.unseen == null);
		System.assert(objRoot.comments == null);
		System.assert(objRoot.metadata == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		To objTo = new To(System.JSON.createParser(json));
		System.assert(objTo != null);
		System.assert(objTo.data == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		Metadata objMetadata = new Metadata(System.JSON.createParser(json));
		System.assert(objMetadata != null);
		System.assert(objMetadata.connections == null);
		System.assert(objMetadata.fields == null);
		System.assert(objMetadata.type == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		Connections objConnections = new Connections(System.JSON.createParser(json));
		System.assert(objConnections != null);
		System.assert(objConnections.comments == null);
	}
}