.class public Lcom/pubnub/examples/PubnubDemoConsole;
.super Ljava/lang/Object;
.source "PubnubDemoConsole.java"


# instance fields
.field SSL:Z

.field cipher_key:Ljava/lang/String;

.field pubnub:Lcom/pubnub/api/Pubnub;

.field reader:Ljava/util/Scanner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->cipher_key:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/pubnub/examples/PubnubDemoConsole;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/pubnub/examples/PubnubDemoConsole;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/pubnub/examples/PubnubDemoConsole;->notifyUser(Ljava/lang/Object;)V

    return-void
.end method

.method private detailedHistory(Ljava/lang/String;)V
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->pubnub:Lcom/pubnub/api/Pubnub;

    const/4 v1, 0x2

    new-instance v2, Lcom/pubnub/examples/PubnubDemoConsole$4;

    invoke-direct {v2, p0}, Lcom/pubnub/examples/PubnubDemoConsole$4;-><init>(Lcom/pubnub/examples/PubnubDemoConsole;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/pubnub/api/Pubnub;->detailedHistory(Ljava/lang/String;ILcom/pubnub/api/Callback;)V

    .line 97
    return-void
.end method

.method private disconnectAndResubscribe()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->pubnub:Lcom/pubnub/api/Pubnub;

    invoke-virtual {v0}, Lcom/pubnub/api/Pubnub;->disconnectAndResubscribe()V

    .line 133
    return-void
.end method

.method private displayMenuOptions()V
    .locals 3

    .prologue
    .line 241
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENTER 1  FOR Subscribe (Currently subscribed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pubnub/examples/PubnubDemoConsole;->pubnub:Lcom/pubnub/api/Pubnub;

    invoke-virtual {v2}, Lcom/pubnub/api/Pubnub;->getCurrentlySubscribedChannelNames()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ENTER 2  FOR Publish"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ENTER 3  FOR Presence"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ENTER 4  FOR Detailed History"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ENTER 5  FOR Here_Now"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ENTER 6  FOR Unsubscribe"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ENTER 7  FOR Presence-Unsubscribe"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ENTER 8  FOR Time"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 249
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ENTER 9  FOR EXIT OR QUIT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ENTER 10 FOR Disconnect-And-Resubscribe"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ENTER 11 FOR Toggle Resume On Reconnect"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\nENTER 0 to display this menu"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method private hereNow(Ljava/lang/String;)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->pubnub:Lcom/pubnub/api/Pubnub;

    new-instance v1, Lcom/pubnub/examples/PubnubDemoConsole$5;

    invoke-direct {v1, p0}, Lcom/pubnub/examples/PubnubDemoConsole$5;-><init>(Lcom/pubnub/examples/PubnubDemoConsole;)V

    invoke-virtual {v0, p1, v1}, Lcom/pubnub/api/Pubnub;->hereNow(Ljava/lang/String;Lcom/pubnub/api/Callback;)V

    .line 108
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 259
    new-instance v0, Lcom/pubnub/examples/PubnubDemoConsole;

    invoke-direct {v0}, Lcom/pubnub/examples/PubnubDemoConsole;-><init>()V

    invoke-virtual {v0}, Lcom/pubnub/examples/PubnubDemoConsole;->startDemo()V

    .line 260
    return-void
.end method

.method private notifyUser(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 20
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private presence(Ljava/lang/String;)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->pubnub:Lcom/pubnub/api/Pubnub;

    new-instance v1, Lcom/pubnub/examples/PubnubDemoConsole$3;

    invoke-direct {v1, p0}, Lcom/pubnub/examples/PubnubDemoConsole$3;-><init>(Lcom/pubnub/examples/PubnubDemoConsole;)V

    invoke-virtual {v0, p1, v1}, Lcom/pubnub/api/Pubnub;->presence(Ljava/lang/String;Lcom/pubnub/api/Callback;)V
    :try_end_0
    .catch Lcom/pubnub/api/PubnubException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private publish(Ljava/lang/String;)V
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Enter the message for publish. To exit loop enter QUIT"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/pubnub/examples/PubnubDemoConsole;->reader:Ljava/util/Scanner;

    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "message":Ljava/lang/String;
    const-string v2, "QUIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 27
    .local v0, "args":Ljava/util/Hashtable;
    const-string v2, "channel"

    invoke-virtual {v0, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v2, p0, Lcom/pubnub/examples/PubnubDemoConsole;->pubnub:Lcom/pubnub/api/Pubnub;

    new-instance v3, Lcom/pubnub/examples/PubnubDemoConsole$1;

    invoke-direct {v3, p0}, Lcom/pubnub/examples/PubnubDemoConsole$1;-><init>(Lcom/pubnub/examples/PubnubDemoConsole;)V

    invoke-virtual {v2, v0, v3}, Lcom/pubnub/api/Pubnub;->publish(Ljava/util/Hashtable;Lcom/pubnub/api/Callback;)V

    goto :goto_0

    .line 41
    .end local v0    # "args":Ljava/util/Hashtable;
    :cond_0
    return-void
.end method

.method private subscribe(Ljava/lang/String;)V
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 44
    .local v0, "args":Ljava/util/Hashtable;
    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/pubnub/examples/PubnubDemoConsole;->pubnub:Lcom/pubnub/api/Pubnub;

    new-instance v2, Lcom/pubnub/examples/PubnubDemoConsole$2;

    invoke-direct {v2, p0}, Lcom/pubnub/examples/PubnubDemoConsole$2;-><init>(Lcom/pubnub/examples/PubnubDemoConsole;)V

    invoke-virtual {v1, v0, v2}, Lcom/pubnub/api/Pubnub;->subscribe(Ljava/util/Hashtable;Lcom/pubnub/api/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private time()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->pubnub:Lcom/pubnub/api/Pubnub;

    new-instance v1, Lcom/pubnub/examples/PubnubDemoConsole$6;

    invoke-direct {v1, p0}, Lcom/pubnub/examples/PubnubDemoConsole$6;-><init>(Lcom/pubnub/examples/PubnubDemoConsole;)V

    invoke-virtual {v0, v1}, Lcom/pubnub/api/Pubnub;->time(Lcom/pubnub/api/Callback;)V

    .line 128
    return-void
.end method

.method private unsubscribe(Ljava/lang/String;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->pubnub:Lcom/pubnub/api/Pubnub;

    invoke-virtual {v0, p1}, Lcom/pubnub/api/Pubnub;->unsubscribe(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private unsubscribePresence(Ljava/lang/String;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->pubnub:Lcom/pubnub/api/Pubnub;

    invoke-virtual {v0, p1}, Lcom/pubnub/api/Pubnub;->unsubscribePresence(Ljava/lang/String;)V

    .line 116
    return-void
.end method


# virtual methods
.method public startDemo()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 136
    new-instance v0, Ljava/util/Scanner;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->reader:Ljava/util/Scanner;

    .line 137
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HINT:\tTo test Re-connect and catch-up"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\tDisconnect your machine from network/internet and"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\tre-connect your machine after sometime"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Enable SSL ? Enter Y for Yes, else N"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->reader:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, "sslOn":Ljava/lang/String;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    const-string v0, "y"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    :goto_0
    iput-boolean v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->SSL:Z

    .line 145
    iget-boolean v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->SSL:Z

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SSL enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    :goto_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Enter cipher key for encryption feature"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "If you don\'t want to avail at this time, press ENTER"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->reader:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->cipher_key:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->cipher_key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 155
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "No Cipher key provided"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/pubnub/api/Pubnub;

    const-string v1, "demo"

    const-string v2, "demo"

    const-string v3, "demo"

    iget-boolean v4, p0, Lcom/pubnub/examples/PubnubDemoConsole;->SSL:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pubnub/api/Pubnub;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->pubnub:Lcom/pubnub/api/Pubnub;

    .line 163
    :goto_2
    invoke-direct {p0}, Lcom/pubnub/examples/PubnubDemoConsole;->displayMenuOptions()V

    .line 165
    const/4 v6, 0x0

    .line 166
    .local v6, "channelName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 167
    .local v7, "command":I
    :goto_3
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->reader:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextInt()I

    move-result v7

    const/16 v0, 0x9

    if-eq v7, v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->reader:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 169
    packed-switch v7, :pswitch_data_0

    .line 231
    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Invalid Input"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/pubnub/examples/PubnubDemoConsole;->displayMenuOptions()V

    goto :goto_3

    .end local v6    # "channelName":Ljava/lang/String;
    .end local v7    # "command":I
    :cond_0
    move v0, v10

    .line 144
    goto :goto_0

    .line 148
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SSL not enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 158
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cipher Key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pubnub/examples/PubnubDemoConsole;->cipher_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    new-instance v0, Lcom/pubnub/api/Pubnub;

    const-string v1, "demo"

    const-string v2, "demo"

    const-string v3, "demo"

    iget-object v4, p0, Lcom/pubnub/examples/PubnubDemoConsole;->cipher_key:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/pubnub/examples/PubnubDemoConsole;->SSL:Z

    invoke-direct/range {v0 .. v5}, Lcom/pubnub/api/Pubnub;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->pubnub:Lcom/pubnub/api/Pubnub;

    goto :goto_2

    .line 172
    .restart local v6    # "channelName":Ljava/lang/String;
    .restart local v7    # "command":I
    :pswitch_1
    invoke-direct {p0}, Lcom/pubnub/examples/PubnubDemoConsole;->displayMenuOptions()V

    .line 174
    :pswitch_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Subscribe: Enter Channel name"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->reader:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    .line 176
    invoke-direct {p0, v6}, Lcom/pubnub/examples/PubnubDemoConsole;->subscribe(Ljava/lang/String;)V

    .line 177
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Subscribed to following channels: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/pubnub/examples/PubnubDemoConsole;->pubnub:Lcom/pubnub/api/Pubnub;

    invoke-virtual {v1}, Lcom/pubnub/api/Pubnub;->getSubscribedChannelsArray()[Ljava/lang/String;

    move-result-object v1

    const-string v2, " : "

    invoke-static {v1, v2}, Lcom/pubnub/api/PubnubUtil;->joinString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/pubnub/examples/PubnubDemoConsole;->displayMenuOptions()V

    goto/16 :goto_3

    .line 182
    :pswitch_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Publish: Enter Channel name"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->reader:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    .line 184
    invoke-direct {p0, v6}, Lcom/pubnub/examples/PubnubDemoConsole;->publish(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/pubnub/examples/PubnubDemoConsole;->displayMenuOptions()V

    goto/16 :goto_3

    .line 188
    :pswitch_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Presence: Enter Channel name"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->reader:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    .line 190
    invoke-direct {p0, v6}, Lcom/pubnub/examples/PubnubDemoConsole;->presence(Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/pubnub/examples/PubnubDemoConsole;->displayMenuOptions()V

    goto/16 :goto_3

    .line 194
    :pswitch_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Detailed History: Enter Channel name"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->reader:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    .line 196
    invoke-direct {p0, v6}, Lcom/pubnub/examples/PubnubDemoConsole;->detailedHistory(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lcom/pubnub/examples/PubnubDemoConsole;->displayMenuOptions()V

    goto/16 :goto_3

    .line 200
    :pswitch_6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Here Now : Enter Channel name"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->reader:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    .line 202
    invoke-direct {p0, v6}, Lcom/pubnub/examples/PubnubDemoConsole;->hereNow(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/pubnub/examples/PubnubDemoConsole;->displayMenuOptions()V

    goto/16 :goto_3

    .line 206
    :pswitch_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Unsubscribe: Enter Channel name"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->reader:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    .line 208
    invoke-direct {p0, v6}, Lcom/pubnub/examples/PubnubDemoConsole;->unsubscribe(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/pubnub/examples/PubnubDemoConsole;->displayMenuOptions()V

    goto/16 :goto_3

    .line 212
    :pswitch_8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "UnsubscribePresence : Enter Channel name"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->reader:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    .line 214
    invoke-direct {p0, v6}, Lcom/pubnub/examples/PubnubDemoConsole;->unsubscribePresence(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/pubnub/examples/PubnubDemoConsole;->displayMenuOptions()V

    goto/16 :goto_3

    .line 218
    :pswitch_9
    invoke-direct {p0}, Lcom/pubnub/examples/PubnubDemoConsole;->time()V

    .line 219
    invoke-direct {p0}, Lcom/pubnub/examples/PubnubDemoConsole;->displayMenuOptions()V

    goto/16 :goto_3

    .line 222
    :pswitch_a
    invoke-direct {p0}, Lcom/pubnub/examples/PubnubDemoConsole;->disconnectAndResubscribe()V

    .line 223
    invoke-direct {p0}, Lcom/pubnub/examples/PubnubDemoConsole;->displayMenuOptions()V

    goto/16 :goto_3

    .line 226
    :pswitch_b
    iget-object v1, p0, Lcom/pubnub/examples/PubnubDemoConsole;->pubnub:Lcom/pubnub/api/Pubnub;

    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->pubnub:Lcom/pubnub/api/Pubnub;

    invoke-virtual {v0}, Lcom/pubnub/api/Pubnub;->isResumeOnReconnect()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v10

    :goto_4
    invoke-virtual {v1, v0}, Lcom/pubnub/api/Pubnub;->setResumeOnReconnect(Z)V

    .line 227
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESUME ON RECONNECT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pubnub/examples/PubnubDemoConsole;->pubnub:Lcom/pubnub/api/Pubnub;

    invoke-virtual {v2}, Lcom/pubnub/api/Pubnub;->isResumeOnReconnect()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lcom/pubnub/examples/PubnubDemoConsole;->displayMenuOptions()V

    goto/16 :goto_3

    :cond_3
    move v0, v9

    .line 226
    goto :goto_4

    .line 235
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Exiting"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole;->pubnub:Lcom/pubnub/api/Pubnub;

    invoke-virtual {v0}, Lcom/pubnub/api/Pubnub;->shutdown()V

    .line 238
    return-void

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
