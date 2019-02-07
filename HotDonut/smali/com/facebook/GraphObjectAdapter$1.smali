.class Lcom/facebook/GraphObjectAdapter$1;
.super Ljava/lang/Object;
.source "GraphObjectAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphObjectAdapter;->rebuildSections()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/GraphObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/GraphObjectAdapter;

.field private final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/facebook/GraphObjectAdapter;Ljava/text/Collator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/GraphObjectAdapter$1;->this$0:Lcom/facebook/GraphObjectAdapter;

    iput-object p2, p0, Lcom/facebook/GraphObjectAdapter$1;->val$collator:Ljava/text/Collator;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/facebook/GraphObject;Lcom/facebook/GraphObject;)I
    .locals 2
    .param p1, "a"    # Lcom/facebook/GraphObject;
    .param p2, "b"    # Lcom/facebook/GraphObject;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter$1;->this$0:Lcom/facebook/GraphObjectAdapter;

    invoke-static {v0}, Lcom/facebook/GraphObjectAdapter;->access$1(Lcom/facebook/GraphObjectAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter$1;->val$collator:Ljava/text/Collator;

    invoke-static {p1, p2, v0, v1}, Lcom/facebook/Utility;->compareGraphObjects(Lcom/facebook/GraphObject;Lcom/facebook/GraphObject;Ljava/util/Collection;Ljava/text/Collator;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/GraphObject;

    check-cast p2, Lcom/facebook/GraphObject;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphObjectAdapter$1;->compare(Lcom/facebook/GraphObject;Lcom/facebook/GraphObject;)I

    move-result v0

    return v0
.end method
