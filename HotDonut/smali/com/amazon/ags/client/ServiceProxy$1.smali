.class Lcom/amazon/ags/client/ServiceProxy$1;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/client/ServiceProxy;->bindToAsynchronousService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/ServiceProxy;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/ServiceProxy;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/amazon/ags/client/ServiceProxy$1;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy$1;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/amazon/ags/client/ServiceProxy;->access$002(Lcom/amazon/ags/client/ServiceProxy;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 119
    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy$1;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    invoke-static {v0}, Lcom/amazon/ags/client/ServiceProxy;->access$100(Lcom/amazon/ags/client/ServiceProxy;)V

    .line 120
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy$1;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ags/client/ServiceProxy;->access$002(Lcom/amazon/ags/client/ServiceProxy;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 125
    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy$1;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    invoke-static {v0}, Lcom/amazon/ags/client/ServiceProxy;->access$100(Lcom/amazon/ags/client/ServiceProxy;)V

    .line 126
    return-void
.end method
