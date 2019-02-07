.class Lcom/pubnub/examples/PubnubDemoConsole$2;
.super Lcom/pubnub/api/Callback;
.source "PubnubDemoConsole.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubnub/examples/PubnubDemoConsole;->subscribe(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubnub/examples/PubnubDemoConsole;


# direct methods
.method constructor <init>(Lcom/pubnub/examples/PubnubDemoConsole;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/pubnub/examples/PubnubDemoConsole$2;->this$0:Lcom/pubnub/examples/PubnubDemoConsole;

    invoke-direct {p0}, Lcom/pubnub/api/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public connectCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole$2;->this$0:Lcom/pubnub/examples/PubnubDemoConsole;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUBSCRIBE : CONNECT on channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pubnub/examples/PubnubDemoConsole;->access$000(Lcom/pubnub/examples/PubnubDemoConsole;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public disconnectCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole$2;->this$0:Lcom/pubnub/examples/PubnubDemoConsole;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUBSCRIBE : DISCONNECT on channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pubnub/examples/PubnubDemoConsole;->access$000(Lcom/pubnub/examples/PubnubDemoConsole;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public errorCallback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole$2;->this$0:Lcom/pubnub/examples/PubnubDemoConsole;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUBSCRIBE : Unsubscribed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pubnub/examples/PubnubDemoConsole;->access$000(Lcom/pubnub/examples/PubnubDemoConsole;Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public reconnectCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole$2;->this$0:Lcom/pubnub/examples/PubnubDemoConsole;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUBSCRIBE : RECONNECT on channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pubnub/examples/PubnubDemoConsole;->access$000(Lcom/pubnub/examples/PubnubDemoConsole;Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public successCallback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/pubnub/examples/PubnubDemoConsole$2;->this$0:Lcom/pubnub/examples/PubnubDemoConsole;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUBSCRIBE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pubnub/examples/PubnubDemoConsole;->access$000(Lcom/pubnub/examples/PubnubDemoConsole;Ljava/lang/Object;)V

    .line 62
    return-void
.end method
