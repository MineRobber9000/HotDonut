.class Lorg/cocos2dx/lib/Cocos2dxActivity$9;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->showGameInvite(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1234
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$2()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1235
    const-string v1, "Hot Donut Invite"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1236
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1237
    const-string v1, "Play"

    .line 1238
    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxActivity$9$1;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$9$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$9;)V

    .line 1237
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1252
    const-string v1, "Ignore"

    .line 1253
    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxActivity$9$2;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$9$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$9;)V

    .line 1252
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1259
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1261
    return-void
.end method
