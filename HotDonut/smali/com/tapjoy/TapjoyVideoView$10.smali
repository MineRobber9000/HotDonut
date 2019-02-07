.class Lcom/tapjoy/TapjoyVideoView$10;
.super Ljava/lang/Object;
.source "TapjoyVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyVideoView;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$10;->this$0:Lcom/tapjoy/TapjoyVideoView;

    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 945
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 947
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$10;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->access$8(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$10;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v1}, Lcom/tapjoy/TapjoyVideoView;->access$9(Lcom/tapjoy/TapjoyVideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 948
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$10;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->access$8(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 949
    return-void
.end method
