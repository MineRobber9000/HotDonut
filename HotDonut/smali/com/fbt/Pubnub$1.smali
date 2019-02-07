.class Lcom/fbt/Pubnub$1;
.super Ljava/lang/Object;
.source "Pubnub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fbt/Pubnub;->publish(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fbt/Pubnub;

.field private final synthetic val$mychan:Ljava/lang/String;

.field private final synthetic val$myurl:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fbt/Pubnub;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fbt/Pubnub$1;->this$0:Lcom/fbt/Pubnub;

    iput-object p2, p0, Lcom/fbt/Pubnub$1;->val$myurl:Ljava/util/List;

    iput-object p3, p0, Lcom/fbt/Pubnub$1;->val$mychan:Ljava/lang/String;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/fbt/Pubnub$1;->this$0:Lcom/fbt/Pubnub;

    iget-object v1, p0, Lcom/fbt/Pubnub$1;->val$myurl:Ljava/util/List;

    iget-object v2, p0, Lcom/fbt/Pubnub$1;->val$mychan:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/fbt/Pubnub;->access$1(Lcom/fbt/Pubnub;Ljava/util/List;Ljava/lang/String;)Lorg/json/JSONArray;

    .line 257
    return-void
.end method
