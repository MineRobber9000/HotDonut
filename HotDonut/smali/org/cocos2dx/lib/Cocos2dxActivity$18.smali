.class Lorg/cocos2dx/lib/Cocos2dxActivity$18;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->createDialog(II)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private final synthetic val$helpUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$18;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$18;->val$helpUri:Landroid/net/Uri;

    .line 1697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1700
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 1701
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$18;->val$helpUri:Landroid/net/Uri;

    .line 1700
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1702
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$18;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->startActivity(Landroid/content/Intent;)V

    .line 1703
    return-void
.end method
