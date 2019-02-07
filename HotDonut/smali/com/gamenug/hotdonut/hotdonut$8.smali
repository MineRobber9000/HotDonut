.class Lcom/gamenug/hotdonut/hotdonut$8;
.super Ljava/lang/Object;
.source "hotdonut.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamenug/hotdonut/hotdonut;->postPhoto()V
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
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$8;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 810
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 764
    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v1}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v13

    .line 767
    .local v13, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/gamenug/hotdonut/hotdonut$8;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-static {v1, v13}, Lcom/gamenug/hotdonut/hotdonut;->access$10(Lcom/gamenug/hotdonut/hotdonut;Ljava/lang/String;)V

    .line 769
    const/4 v9, 0x0

    check-cast v9, [B

    .line 771
    .local v9, "data":[B
    :try_start_0
    new-instance v12, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 772
    iget-object v3, p0, Lcom/gamenug/hotdonut/hotdonut$8;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-virtual {v3}, Lcom/gamenug/hotdonut/hotdonut;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/hovershot.jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    .local v12, "myFile":Ljava/io/File;
    if-nez v12, :cond_0

    .line 798
    .end local v12    # "myFile":Ljava/io/File;
    :goto_0
    return-void

    .line 777
    .restart local v12    # "myFile":Ljava/io/File;
    :cond_0
    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    .line 779
    .local v14, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/gamenug/hotdonut/hotdonut$8;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-virtual {v1}, Lcom/gamenug/hotdonut/hotdonut;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 780
    .local v8, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v8, v14}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 781
    .local v11, "fis":Ljava/io/InputStream;
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 782
    .local v7, "bi":Landroid/graphics/Bitmap;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 783
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v7, v1, v3, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 785
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 790
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "bi":Landroid/graphics/Bitmap;
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "fis":Ljava/io/InputStream;
    .end local v12    # "myFile":Ljava/io/File;
    .end local v14    # "uri":Landroid/net/Uri;
    :goto_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 791
    .local v2, "params":Landroid/os/Bundle;
    const-string v1, "method"

    const-string v3, "photos.upload"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v1, "picture"

    invoke-virtual {v2, v1, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 794
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    .line 795
    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    .line 794
    invoke-direct {v0, v1}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    .line 796
    .local v0, "mAsyncRunner":Lcom/facebook/android/AsyncFacebookRunner;
    const/4 v1, 0x0

    const-string v3, "POST"

    .line 797
    new-instance v4, Lcom/gamenug/hotdonut/hotdonut$SampleUploadListener;

    iget-object v5, p0, Lcom/gamenug/hotdonut/hotdonut$8;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-direct {v4, v5}, Lcom/gamenug/hotdonut/hotdonut$SampleUploadListener;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    const/4 v5, 0x0

    .line 796
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 786
    .end local v0    # "mAsyncRunner":Lcom/facebook/android/AsyncFacebookRunner;
    .end local v2    # "params":Landroid/os/Bundle;
    :catch_0
    move-exception v10

    .line 787
    .local v10, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 0
    .param p1, "e"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 806
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 0
    .param p1, "error"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 802
    return-void
.end method
