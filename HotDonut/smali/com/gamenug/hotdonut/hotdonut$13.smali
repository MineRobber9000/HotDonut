.class Lcom/gamenug/hotdonut/hotdonut$13;
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
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$13;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/gamenug/hotdonut/hotdonut$13;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-virtual {v0}, Lcom/gamenug/hotdonut/hotdonut;->finish()V

    .line 1089
    return-void
.end method
