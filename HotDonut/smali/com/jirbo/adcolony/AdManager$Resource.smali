.class Lcom/jirbo/adcolony/AdManager$Resource;
.super Ljava/lang/Object;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Resource"
.end annotation


# instance fields
.field properties:Lcom/jirbo/adcolony/JSON$JSObject;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/JSON$JSObject;)V
    .locals 0
    .param p1, "json"    # Lcom/jirbo/adcolony/JSON$JSObject;

    .prologue
    .line 941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 942
    iput-object p1, p0, Lcom/jirbo/adcolony/AdManager$Resource;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    .line 943
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    new-instance v0, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-direct {v0}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdManager$Resource;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    .line 934
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$Resource;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$Resource;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$Resource;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "filepath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v3

    iget-object v3, v3, Lcom/jirbo/adcolony/AdManager;->data_dir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    return-void
.end method


# virtual methods
.method bitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$Resource;->filepath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method filepath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$Resource;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "filepath"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$Resource;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "key"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toJSObject()Lcom/jirbo/adcolony/JSON$JSObject;
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$Resource;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    return-object v0
.end method

.method url()Ljava/lang/String;
    .locals 2

    .prologue
    .line 946
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$Resource;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
