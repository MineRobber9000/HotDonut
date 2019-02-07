.class public Lcom/pubnub/httpclient/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private response:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p2}, Lcom/pubnub/httpclient/HttpResponse;->setResposnse(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/pubnub/httpclient/HttpResponse;->setStatusCode(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/pubnub/httpclient/HttpResponse;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/pubnub/httpclient/HttpResponse;->statusCode:I

    return v0
.end method

.method public setResposnse(Ljava/lang/String;)V
    .locals 0
    .param p1, "resposnse"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/pubnub/httpclient/HttpResponse;->response:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/pubnub/httpclient/HttpResponse;->statusCode:I

    .line 21
    return-void
.end method
