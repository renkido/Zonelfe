FROM quay.io/lyfe00011/md:beta

# Clone your bot repo
RUN git clone https://github.com/renkido/levanter.git /root/LyFE/

# Set working directory
WORKDIR /root/LyFE/

# Install dependencies including express
RUN yarn install
# Tell Render which port to use (default: 3000)
ENV PORT=3000

# Expose the port (optional but good practice)
EXPOSE $PORT

# Start the bot (make sure it listens on $PORT)
CMD ["npm", "start"]
