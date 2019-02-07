.class Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CatalogEntry"
.end annotation


# instance fields
.field public managed:Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

.field public nameId:I

.field public sku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/cocos2dx/lib/Cocos2dxActivity$Managed;)V
    .locals 0
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "nameId"    # I
    .param p3, "managed"    # Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;->sku:Ljava/lang/String;

    .line 357
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;->nameId:I

    .line 358
    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;->managed:Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    .line 359
    return-void
.end method
