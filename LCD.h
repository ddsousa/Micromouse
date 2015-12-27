class LCD
{
	public:
		void sendNibble( uint8_t type, uint8_t nibble);
		void sendByte( uint8_t type, uint8_t data);
		void init(void);
		void writeString(char * str);
		void clear(void);
};