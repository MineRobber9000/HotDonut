.class Lcom/jirbo/adcolony/AdManager$Downloader$Item;
.super Ljava/lang/Object;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdManager$Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Item"
.end annotation


# instance fields
.field filepath:Ljava/lang/String;

.field sha1_hash:Ljava/lang/String;

.field final synthetic this$1:Lcom/jirbo/adcolony/AdManager$Downloader;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdManager$Downloader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "filepath"    # Ljava/lang/String;
    .param p4, "sha1_hash"    # Ljava/lang/String;

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/jirbo/adcolony/AdManager$Downloader$Item;->this$1:Lcom/jirbo/adcolony/AdManager$Downloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1231
    iput-object p2, p0, Lcom/jirbo/adcolony/AdManager$Downloader$Item;->url:Ljava/lang/String;

    .line 1232
    iput-object p3, p0, Lcom/jirbo/adcolony/AdManager$Downloader$Item;->filepath:Ljava/lang/String;

    .line 1233
    iput-object p4, p0, Lcom/jirbo/adcolony/AdManager$Downloader$Item;->sha1_hash:Ljava/lang/String;

    .line 1234
    return-void
.end method
