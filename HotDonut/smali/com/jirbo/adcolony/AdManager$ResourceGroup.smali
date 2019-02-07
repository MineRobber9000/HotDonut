.class Lcom/jirbo/adcolony/AdManager$ResourceGroup;
.super Ljava/lang/Object;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResourceGroup"
.end annotation


# instance fields
.field missing_resources:Z

.field resources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jirbo/adcolony/AdManager$Resource;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jirbo/adcolony/AdManager;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdManager;)V
    .locals 1

    .prologue
    .line 963
    iput-object p1, p0, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->this$0:Lcom/jirbo/adcolony/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->resources:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 999
    new-instance v0, Lcom/jirbo/adcolony/AdManager$Resource;

    invoke-direct {v0, p1, p2}, Lcom/jirbo/adcolony/AdManager$Resource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    .local v0, "resource":Lcom/jirbo/adcolony/AdManager$Resource;
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->resources:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->isReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->missing_resources:Z

    if-eqz v1, :cond_1

    .line 1004
    :cond_0
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->this$0:Lcom/jirbo/adcolony/AdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdManager;->downloader:Lcom/jirbo/adcolony/AdManager$Downloader;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdManager$Resource;->filepath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3}, Lcom/jirbo/adcolony/AdManager$Downloader;->queue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :goto_0
    return-void

    .line 1008
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->this$0:Lcom/jirbo/adcolony/AdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdManager;->downloader:Lcom/jirbo/adcolony/AdManager$Downloader;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdManager$Resource;->filepath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/AdManager$Downloader;->addFilename(Ljava/lang/String;)V

    goto :goto_0
.end method

.method contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 970
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->resources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method get(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$Resource;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 984
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->resources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/AdManager$Resource;

    return-object v0
.end method

.method isReady(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 975
    iget-object v2, p0, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->resources:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/AdManager$Resource;

    .line 976
    .local v0, "resource":Lcom/jirbo/adcolony/AdManager$Resource;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 979
    :cond_0
    :goto_0
    return v1

    .line 977
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdManager$Resource;->filepath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 978
    .local v1, "result":Z
    if-nez v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->missing_resources:Z

    goto :goto_0
.end method

.method load(Ljava/lang/String;)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1026
    :try_start_0
    invoke-static {p1}, Lcom/jirbo/adcolony/JSON;->load(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v1

    .line 1028
    .local v1, "data":Lcom/jirbo/adcolony/JSON$JSObject;
    invoke-virtual {v1}, Lcom/jirbo/adcolony/JSON$JSObject;->count()I

    move-result v0

    .line 1030
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1032
    new-instance v4, Lcom/jirbo/adcolony/AdManager$Resource;

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->get(I)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jirbo/adcolony/AdManager$Resource;-><init>(Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 1033
    .local v4, "resource":Lcom/jirbo/adcolony/AdManager$Resource;
    iget-object v5, p0, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->resources:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/jirbo/adcolony/AdManager$Resource;->key()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1036
    .end local v0    # "count":I
    .end local v1    # "data":Lcom/jirbo/adcolony/JSON$JSObject;
    .end local v3    # "i":I
    .end local v4    # "resource":Lcom/jirbo/adcolony/AdManager$Resource;
    :catch_0
    move-exception v2

    .line 1038
    .local v2, "err":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 1040
    .end local v2    # "err":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method save(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1014
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSArray;

    invoke-direct {v0}, Lcom/jirbo/adcolony/JSON$JSArray;-><init>()V

    .line 1015
    .local v0, "data":Lcom/jirbo/adcolony/JSON$JSArray;
    iget-object v3, p0, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->resources:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jirbo/adcolony/AdManager$Resource;

    .line 1017
    .local v2, "resource":Lcom/jirbo/adcolony/AdManager$Resource;
    invoke-virtual {v2}, Lcom/jirbo/adcolony/AdManager$Resource;->toJSObject()Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/JSON$JSArray;->add(Lcom/jirbo/adcolony/JSON$JSObject;)Lcom/jirbo/adcolony/JSON$JSArray;

    goto :goto_0

    .line 1019
    .end local v2    # "resource":Lcom/jirbo/adcolony/AdManager$Resource;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/JSON$JSArray;->save(Ljava/lang/String;)V

    .line 1020
    return-void
.end method
