.class Lcom/gamenug/hotdonut/hotdonut$12;
.super Ljava/lang/Object;
.source "hotdonut.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamenug/hotdonut/hotdonut;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamenug/hotdonut/hotdonut;


# direct methods
.method constructor <init>(Lcom/gamenug/hotdonut/hotdonut;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$12;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1076
    new-instance v0, Landroid/content/Intent;

    .line 1077
    const-string v1, "android.intent.action.VIEW"

    .line 1078
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://market.android.com/details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1079
    iget-object v3, p0, Lcom/gamenug/hotdonut/hotdonut$12;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-virtual {v3}, Lcom/gamenug/hotdonut/hotdonut;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1078
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1076
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1080
    .local v0, "marketIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/gamenug/hotdonut/hotdonut$12;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-virtual {v1, v0}, Lcom/gamenug/hotdonut/hotdonut;->startActivity(Landroid/content/Intent;)V

    .line 1081
    iget-object v1, p0, Lcom/gamenug/hotdonut/hotdonut$12;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-virtual {v1}, Lcom/gamenug/hotdonut/hotdonut;->finish()V

    .line 1082
    return-void
.end method
