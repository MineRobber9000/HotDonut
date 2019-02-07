.class Lcom/gamenug/hotdonut/hotdonut$16;
.super Ljava/lang/Object;
.source "hotdonut.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamenug/hotdonut/hotdonut;->deleteRequest(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$16;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    .line 1304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 1313
    return-void
.end method
