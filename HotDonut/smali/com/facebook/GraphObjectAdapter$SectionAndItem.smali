.class public Lcom/facebook/GraphObjectAdapter$SectionAndItem;
.super Ljava/lang/Object;
.source "GraphObjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphObjectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SectionAndItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/GraphObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public graphObject:Lcom/facebook/GraphObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public sectionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/GraphObject;)V
    .locals 0
    .param p1, "sectionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/facebook/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/GraphObjectAdapter<TT;>.SectionAndItem<TT;>;"
    .local p2, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/GraphObject;

    .line 82
    return-void
.end method


# virtual methods
.method public getType()Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lcom/facebook/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/GraphObjectAdapter<TT;>.SectionAndItem<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;

    .line 90
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/GraphObject;

    if-nez v0, :cond_1

    .line 88
    sget-object v0, Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;->SECTION_HEADER:Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;

    goto :goto_0

    .line 90
    :cond_1
    sget-object v0, Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;

    goto :goto_0
.end method
