.class Lcom/amazon/ags/client/ServiceProxy$2;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/client/ServiceProxy;->bindToSynchronousService(Landroid/content/Context;)V
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
    .line 142
    iput-object p1, p0, Lcom/amazon/ags/client/ServiceProxy$2;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy$2;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    invoke-static {v0, p2}, Lcom/amazon/ags/client/ServiceProxy;->access$202(Lcom/amazon/ags/client/ServiceProxy;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 147
    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy$2;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    invoke-static {v0}, Lcom/amazon/ags/client/ServiceProxy;->access$100(Lcom/amazon/ags/client/ServiceProxy;)V

    .line 148
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy$2;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ags/client/ServiceProxy;->access$202(Lcom/amazon/ags/client/ServiceProxy;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 153
    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy$2;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    invoke-static {v0}, Lcom/amazon/ags/client/ServiceProxy;->access$100(Lcom/amazon/ags/client/ServiceProxy;)V

    .line 154
    return-void
.end method
