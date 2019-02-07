.class Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;
.super Landroid/os/AsyncTask;
.source "LoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/LoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfilePictureDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/net/URL;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private tag:Ljava/net/URL;

.field final synthetic this$0:Lcom/facebook/LoginFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/LoginFragment;Ljava/lang/String;)V
    .locals 0
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;->this$0:Lcom/facebook/LoginFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 287
    iput-object p2, p0, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;->id:Ljava/lang/String;

    .line 288
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/net/URL;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/net/URL;

    .prologue
    .line 292
    const/4 v1, 0x0

    .line 293
    .local v1, "connection":Ljava/net/URLConnection;
    const/4 v2, 0x0

    .line 295
    .local v2, "stream":Ljava/io/InputStream;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    iput-object v3, p0, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;->tag:Ljava/net/URL;

    .line 296
    iget-object v3, p0, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;->tag:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 297
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 298
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 302
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 303
    invoke-static {v1}, Lcom/facebook/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 305
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 300
    :catch_0
    move-exception v3

    .line 302
    invoke-static {v2}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 303
    invoke-static {v1}, Lcom/facebook/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 305
    const/4 v0, 0x0

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v3

    .line 302
    invoke-static {v2}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 303
    invoke-static {v1}, Lcom/facebook/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 304
    throw v3
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;->doInBackground([Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 310
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 311
    iget-object v1, p0, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;->this$0:Lcom/facebook/LoginFragment;

    invoke-virtual {v1}, Lcom/facebook/LoginFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;->this$0:Lcom/facebook/LoginFragment;

    invoke-virtual {v1}, Lcom/facebook/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 314
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;->this$0:Lcom/facebook/LoginFragment;

    invoke-virtual {v1}, Lcom/facebook/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/android/R$dimen;->com_facebook_loginfragment_profile_picture_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 315
    iget-object v2, p0, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;->this$0:Lcom/facebook/LoginFragment;

    invoke-virtual {v2}, Lcom/facebook/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/android/R$dimen;->com_facebook_loginfragment_profile_picture_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 313
    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 316
    iget-object v1, p0, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;->this$0:Lcom/facebook/LoginFragment;

    invoke-static {v1, v0}, Lcom/facebook/LoginFragment;->access$3(Lcom/facebook/LoginFragment;Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v1, p0, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;->this$0:Lcom/facebook/LoginFragment;

    iget-object v2, p0, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/LoginFragment;->access$4(Lcom/facebook/LoginFragment;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;->this$0:Lcom/facebook/LoginFragment;

    invoke-static {v1}, Lcom/facebook/LoginFragment;->access$5(Lcom/facebook/LoginFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 319
    iget-object v1, p0, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;->this$0:Lcom/facebook/LoginFragment;

    invoke-static {v1}, Lcom/facebook/LoginFragment;->access$5(Lcom/facebook/LoginFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;->tag:Ljava/net/URL;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 321
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
