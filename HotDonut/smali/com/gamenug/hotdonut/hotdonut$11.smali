.class Lcom/gamenug/hotdonut/hotdonut$11;
.super Ljava/lang/Object;
.source "hotdonut.java"

# interfaces
.implements Lcom/facebook/android/AsyncFacebookRunner$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamenug/hotdonut/hotdonut;->logoutFacebook()V
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
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$11;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gamenug/hotdonut/hotdonut$11;)Lcom/gamenug/hotdonut/hotdonut;
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/gamenug/hotdonut/hotdonut$11;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/gamenug/hotdonut/hotdonut$11;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    new-instance v1, Lcom/gamenug/hotdonut/hotdonut$11$1;

    invoke-direct {v1, p0}, Lcom/gamenug/hotdonut/hotdonut$11$1;-><init>(Lcom/gamenug/hotdonut/hotdonut$11;)V

    invoke-virtual {v0, v1}, Lcom/gamenug/hotdonut/hotdonut;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1044
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Lcom/facebook/android/FacebookError;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1062
    return-void
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1053
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1048
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1058
    return-void
.end method
