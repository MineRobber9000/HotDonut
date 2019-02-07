.class Lcom/jirbo/adcolony/AdManager$Downloader;
.super Ljava/lang/Object;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Downloader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/AdManager$Downloader$Item;
    }
.end annotation


# instance fields
.field filenames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pending_items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/AdManager$Downloader$Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jirbo/adcolony/AdManager;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdManager;)V
    .locals 1

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/jirbo/adcolony/AdManager$Downloader;->this$0:Lcom/jirbo/adcolony/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdManager$Downloader;->pending_items:Ljava/util/ArrayList;

    .line 1238
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdManager$Downloader;->filenames:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method addFilename(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 1251
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$Downloader;->pending_items:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1253
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$Downloader;->filenames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1254
    monitor-exit v1

    .line 1255
    return-void

    .line 1254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public downloadAll()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 1259
    const/4 v7, 0x1

    .line 1263
    .local v7, "success":Z
    :goto_0
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$Downloader;->this$0:Lcom/jirbo/adcolony/AdManager;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdManager;->terminated:Z

    if-eqz v1, :cond_0

    move v7, v8

    .line 1274
    .end local v7    # "success":Z
    :goto_1
    return v7

    .line 1266
    .restart local v7    # "success":Z
    :cond_0
    iget-object v2, p0, Lcom/jirbo/adcolony/AdManager$Downloader;->pending_items:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1268
    :try_start_0
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$Downloader;->this$0:Lcom/jirbo/adcolony/AdManager;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdManager;->storage_full:Z

    if-eqz v1, :cond_1

    .line 1270
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$Downloader;->pending_items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1271
    monitor-exit v2

    move v7, v8

    goto :goto_1

    .line 1274
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$Downloader;->pending_items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    monitor-exit v2

    goto :goto_1

    .line 1276
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1275
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$Downloader;->pending_items:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jirbo/adcolony/AdManager$Downloader$Item;

    .line 1276
    .local v6, "item":Lcom/jirbo/adcolony/AdManager$Downloader$Item;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1279
    iget-object v1, v6, Lcom/jirbo/adcolony/AdManager$Downloader$Item;->filepath:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/StateManager;->getTimestamp(Ljava/lang/String;)J

    move-result-wide v3

    .line 1280
    .local v3, "timestamp":J
    new-instance v0, Lcom/jirbo/adcolony/DataDownloader;

    iget-object v1, v6, Lcom/jirbo/adcolony/AdManager$Downloader$Item;->url:Ljava/lang/String;

    iget-object v2, v6, Lcom/jirbo/adcolony/AdManager$Downloader$Item;->filepath:Ljava/lang/String;

    iget-object v5, v6, Lcom/jirbo/adcolony/AdManager$Downloader$Item;->sha1_hash:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/jirbo/adcolony/DataDownloader;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1282
    .local v0, "downloader":Lcom/jirbo/adcolony/DataDownloader;
    invoke-virtual {v0}, Lcom/jirbo/adcolony/DataDownloader;->run()V

    .line 1284
    iget-boolean v1, v0, Lcom/jirbo/adcolony/DataDownloader;->success:Z

    if-eqz v1, :cond_3

    .line 1286
    iget-object v1, v6, Lcom/jirbo/adcolony/AdManager$Downloader$Item;->filepath:Ljava/lang/String;

    iget-wide v9, v0, Lcom/jirbo/adcolony/DataDownloader;->timestamp:J

    invoke-static {v1, v9, v10}, Lcom/jirbo/adcolony/StateManager;->setTimestamp(Ljava/lang/String;J)V

    goto :goto_0

    .line 1290
    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method queue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "sha1_hash"    # Ljava/lang/String;

    .prologue
    .line 1242
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$Downloader;->pending_items:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1244
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$Downloader;->pending_items:Ljava/util/ArrayList;

    new-instance v2, Lcom/jirbo/adcolony/AdManager$Downloader$Item;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/jirbo/adcolony/AdManager$Downloader$Item;-><init>(Lcom/jirbo/adcolony/AdManager$Downloader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$Downloader;->filenames:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1246
    monitor-exit v1

    .line 1247
    return-void

    .line 1246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
