.class Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;
.super Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoZoneInfo"
.end annotation


# instance fields
.field videos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/AdManager$VideoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jirbo/adcolony/JSON$JSObject;I)V
    .locals 27
    .param p1, "json"    # Lcom/jirbo/adcolony/JSON$JSObject;
    .param p2, "type"    # I

    .prologue
    .line 668
    invoke-direct/range {p0 .. p2}, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;-><init>(Lcom/jirbo/adcolony/JSON$JSObject;I)V

    .line 663
    new-instance v23, Ljava/util/ArrayList;

    const/16 v24, 0x4

    invoke-direct/range {v23 .. v24}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->videos:Ljava/util/ArrayList;

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->zone()Ljava/lang/String;

    move-result-object v22

    .line 672
    .local v22, "zone_id":Ljava/lang/String;
    if-nez p2, :cond_8

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    move-object/from16 v23, v0

    const-string v24, "type"

    const-string v25, "video_zone"

    invoke-virtual/range {v23 .. v25}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v23, "uses_virtual_currency"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    const-string v23, "vc_playcap"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    const-string v23, "vc_reward_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    const-string v23, "vc_reward_amount"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    move-object/from16 v23, v0

    const-string v24, "uses_virtual_currency"

    const-string v25, "uses_virtual_currency"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    move-object/from16 v23, v0

    const-string v24, "vc_playcap"

    const-string v25, "vc_playcap"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    move-object/from16 v23, v0

    const-string v24, "vc_reward_name"

    const-string v25, "vc_reward_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    move-object/from16 v23, v0

    const-string v24, "vc_reward_amount"

    const-string v25, "vc_reward_amount"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 691
    const/16 v20, 0x0

    .line 692
    .local v20, "vc_client_side":Z
    const-string v23, "vc_client_side"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    move-object/from16 v23, v0

    const-string v24, "vc_client_side"

    const-string v25, "vc_client_side"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 699
    .end local v20    # "vc_client_side":Z
    :cond_0
    const-string v23, "zone_play_queue"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v15

    .line 700
    .local v15, "play_queue":Lcom/jirbo/adcolony/JSON$JSObject;
    if-eqz v15, :cond_7

    .line 703
    const/4 v14, 0x0

    .line 704
    .local v14, "max":I
    invoke-virtual {v15}, Lcom/jirbo/adcolony/JSON$JSObject;->keys()Ljava/lang/Iterable;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 706
    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v15, v12}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v19

    .line 707
    .local v19, "positions":Lcom/jirbo/adcolony/JSON$JSObject;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    invoke-virtual/range {v19 .. v19}, Lcom/jirbo/adcolony/JSON$JSObject;->count()I

    move-result v23

    move/from16 v0, v23

    if-ge v11, v0, :cond_1

    .line 709
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/jirbo/adcolony/JSON$JSObject;->get(I)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/jirbo/adcolony/JSON$JSObject;->toInt()I

    move-result v18

    .line 710
    .local v18, "position":I
    move/from16 v0, v18

    if-le v0, v14, :cond_2

    move/from16 v14, v18

    .line 707
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 714
    .end local v11    # "j":I
    .end local v12    # "key":Ljava/lang/String;
    .end local v18    # "position":I
    .end local v19    # "positions":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_3
    add-int/lit8 v23, v14, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 718
    .local v16, "playlist":[Ljava/lang/String;
    invoke-virtual {v15}, Lcom/jirbo/adcolony/JSON$JSObject;->keys()Ljava/lang/Iterable;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 720
    .restart local v12    # "key":Ljava/lang/String;
    invoke-virtual {v15, v12}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v19

    .line 721
    .restart local v19    # "positions":Lcom/jirbo/adcolony/JSON$JSObject;
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_1
    invoke-virtual/range {v19 .. v19}, Lcom/jirbo/adcolony/JSON$JSObject;->count()I

    move-result v23

    move/from16 v0, v23

    if-ge v11, v0, :cond_4

    .line 723
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/jirbo/adcolony/JSON$JSObject;->get(I)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/jirbo/adcolony/JSON$JSObject;->toInt()I

    move-result v18

    .line 724
    .restart local v18    # "position":I
    aput-object v12, v16, v18

    .line 721
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 728
    .end local v11    # "j":I
    .end local v12    # "key":Ljava/lang/String;
    .end local v18    # "position":I
    .end local v19    # "positions":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_5
    new-instance v17, Lcom/jirbo/adcolony/JSON$JSArray;

    invoke-direct/range {v17 .. v17}, Lcom/jirbo/adcolony/JSON$JSArray;-><init>()V

    .line 729
    .local v17, "playlist_obj":Lcom/jirbo/adcolony/JSON$JSArray;
    move-object/from16 v4, v16

    .local v4, "arr$":[Ljava/lang/String;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v13, :cond_6

    aget-object v10, v4, v9

    .local v10, "item":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/jirbo/adcolony/JSON$JSArray;->add(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 730
    .end local v10    # "item":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    move-object/from16 v23, v0

    const-string v24, "playlist"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 733
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "max":I
    .end local v16    # "playlist":[Ljava/lang/String;
    .end local v17    # "playlist_obj":Lcom/jirbo/adcolony/JSON$JSArray;
    :cond_7
    const-string v23, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v7

    .line 734
    .local v7, "data":Lcom/jirbo/adcolony/JSON$JSObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    move-object/from16 v23, v0

    const-string v24, "max_plays"

    const-string v25, "frequency"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    move-object/from16 v23, v0

    const-string v24, "max_interval"

    const-string v25, "interval"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    move-object/from16 v23, v0

    const-string v24, "allow_rotation"

    const-string v25, "allow_rotation"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 738
    const-string v23, "campaign"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/jirbo/adcolony/JSON$JSObject;->get(I)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/jirbo/adcolony/JSON$JSObject;->get(I)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v5

    .line 740
    .local v5, "campaigns":Lcom/jirbo/adcolony/JSON$JSObject;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-virtual {v5}, Lcom/jirbo/adcolony/JSON$JSObject;->count()I

    move-result v23

    move/from16 v0, v23

    if-ge v8, v0, :cond_9

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->videos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    new-instance v24, Lcom/jirbo/adcolony/AdManager$VideoInfo;

    invoke-virtual {v5, v8}, Lcom/jirbo/adcolony/JSON$JSObject;->get(I)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/jirbo/adcolony/AdManager$VideoInfo;-><init>(Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;Lcom/jirbo/adcolony/JSON$JSObject;I)V

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 747
    .end local v5    # "campaigns":Lcom/jirbo/adcolony/JSON$JSObject;
    .end local v7    # "data":Lcom/jirbo/adcolony/JSON$JSObject;
    .end local v8    # "i":I
    .end local v15    # "play_queue":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    move-object/from16 v23, v0

    const-string v24, "videos"

    invoke-virtual/range {v23 .. v24}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v21

    .line 748
    .local v21, "video_json":Lcom/jirbo/adcolony/JSON$JSObject;
    invoke-virtual/range {v21 .. v21}, Lcom/jirbo/adcolony/JSON$JSObject;->count()I

    move-result v6

    .line 749
    .local v6, "count":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    if-ge v8, v6, :cond_9

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->videos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    new-instance v24, Lcom/jirbo/adcolony/AdManager$VideoInfo;

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/jirbo/adcolony/JSON$JSObject;->get(I)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/jirbo/adcolony/AdManager$VideoInfo;-><init>(Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;Lcom/jirbo/adcolony/JSON$JSObject;I)V

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 754
    .end local v6    # "count":I
    .end local v21    # "video_json":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_9
    return-void
.end method


# virtual methods
.method V4VCAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 765
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->usesVirtualCurrency()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 772
    :cond_0
    :goto_0
    return v0

    .line 767
    :cond_1
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->vcPlaycap()I

    move-result v2

    if-ltz v2, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->getLastVCPlayDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/jirbo/adcolony/AdManager;->todaysDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUR PLAYS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->getCurVCPlays()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DAILY MAX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->vcPlaycap()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jirbo/adcolony/AdColony;->logDebug(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->getCurVCPlays()I

    move-result v2

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->vcPlaycap()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method awardVirtualCurrency()V
    .locals 2

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->getLastVCPlayDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/jirbo/adcolony/AdManager;->todaysDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    invoke-static {}, Lcom/jirbo/adcolony/AdManager;->todaysDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->setLastVCPlayDate(Ljava/lang/String;)V

    .line 780
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->setCurVCPlays(I)V

    .line 786
    :goto_0
    return-void

    .line 784
    :cond_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->getCurVCPlays()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->setCurVCPlays(I)V

    goto :goto_0
.end method

.method public chooseVideo()Lcom/jirbo/adcolony/AdManager$VideoInfo;
    .locals 8

    .prologue
    .line 863
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v6

    iget-object v4, v6, Lcom/jirbo/adcolony/AdManager;->recently_played:Ljava/util/ArrayList;

    .line 865
    .local v4, "recently_played":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v7, "playlist"

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    check-cast v3, Lcom/jirbo/adcolony/JSON$JSArray;

    .line 866
    .local v3, "playlist":Lcom/jirbo/adcolony/JSON$JSArray;
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->zone()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jirbo/adcolony/StateManager;->getPlaylistIndex(Ljava/lang/String;)I

    move-result v2

    .line 867
    .local v2, "index":I
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/jirbo/adcolony/JSON$JSArray;->count()I

    move-result v6

    if-lez v6, :cond_2

    .line 869
    invoke-virtual {v3}, Lcom/jirbo/adcolony/JSON$JSArray;->count()I

    move-result v6

    if-lt v2, v6, :cond_0

    const/4 v2, 0x0

    .line 870
    :cond_0
    const-string v6, "error"

    invoke-virtual {v3, v2, v6}, Lcom/jirbo/adcolony/JSON$JSArray;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "ad_id":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 872
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->zone()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/jirbo/adcolony/StateManager;->setPlaylistIndex(Ljava/lang/String;I)V

    .line 875
    iget-object v6, p0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jirbo/adcolony/AdManager$VideoInfo;

    .line 877
    .local v5, "video":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    invoke-virtual {v5}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->adID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 879
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 880
    invoke-virtual {v5}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->videoURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    .end local v0    # "ad_id":Ljava/lang/String;
    .end local v5    # "video":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    :goto_0
    return-object v5

    .line 886
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v6, p0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jirbo/adcolony/AdManager$VideoInfo;

    .line 888
    .restart local v5    # "video":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    invoke-virtual {v5}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->videoURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->isReady()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 890
    invoke-virtual {v5}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->videoURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 895
    .end local v5    # "video":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 897
    iget-object v6, p0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jirbo/adcolony/AdManager$VideoInfo;

    .line 899
    .restart local v5    # "video":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    invoke-virtual {v5}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->isReady()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 901
    invoke-virtual {v5}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->videoURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 906
    .end local v5    # "video":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No ad for zone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->zone()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is currently available."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 907
    const/4 v5, 0x0

    goto :goto_0
.end method

.method clientSideVC()Z
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "vc_client_side"

    const-string v2, "NO"

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getCurInterval()I
    .locals 1

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->zone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/StateManager;->getCurInterval(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getCurPlays()I
    .locals 1

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->zone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/StateManager;->getCurPlays(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getCurVCPlays()I
    .locals 1

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->zone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/StateManager;->getCurVCPlays(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getLastVCPlayDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->zone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/StateManager;->getLastVCPlayDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMaxInterval()I
    .locals 3

    .prologue
    .line 821
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "max_interval"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getMaxPlays()I
    .locals 3

    .prologue
    .line 817
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "max_plays"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hasLessRecentlyPlayedVideos()Z
    .locals 4

    .prologue
    .line 847
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v3

    iget-object v1, v3, Lcom/jirbo/adcolony/AdManager;->recently_played:Ljava/util/ArrayList;

    .line 848
    .local v1, "recently_played":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jirbo/adcolony/AdManager$VideoInfo;

    .line 850
    .local v2, "video":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    invoke-virtual {v2}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->videoURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 852
    const/4 v3, 0x1

    .line 855
    .end local v2    # "video":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method setCurInterval(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->zone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/jirbo/adcolony/StateManager;->setCurInterval(Ljava/lang/String;I)V

    return-void
.end method

.method setCurPlays(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->zone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/jirbo/adcolony/StateManager;->setCurPlays(Ljava/lang/String;I)V

    return-void
.end method

.method setCurVCPlays(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->zone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/jirbo/adcolony/StateManager;->setCurVCPlays(Ljava/lang/String;I)V

    return-void
.end method

.method setLastVCPlayDate(Ljava/lang/String;)V
    .locals 1
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->zone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/jirbo/adcolony/StateManager;->setLastVCPlayDate(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method shouldAutoRotate()Z
    .locals 3

    .prologue
    .line 758
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "allow_rotation"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v0

    .line 759
    .local v0, "obj":Lcom/jirbo/adcolony/JSON$JSObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method toJSObject()Lcom/jirbo/adcolony/JSON$JSObject;
    .locals 5

    .prologue
    .line 912
    new-instance v2, Lcom/jirbo/adcolony/JSON$JSArray;

    invoke-direct {v2}, Lcom/jirbo/adcolony/JSON$JSArray;-><init>()V

    .line 913
    .local v2, "video_json":Lcom/jirbo/adcolony/JSON$JSArray;
    iget-object v3, p0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v4, "videos"

    invoke-virtual {v3, v4, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 915
    iget-object v3, p0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/AdManager$VideoInfo;

    .line 917
    .local v1, "video":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->toJSObject()Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/JSON$JSArray;->add(Lcom/jirbo/adcolony/JSON$JSObject;)Lcom/jirbo/adcolony/JSON$JSArray;

    goto :goto_0

    .line 919
    .end local v1    # "video":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    :cond_0
    iget-object v3, p0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    return-object v3
.end method

.method updateCurInterval()Z
    .locals 3

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->getCurInterval()I

    move-result v0

    .line 832
    .local v0, "cur_interval":I
    if-nez v0, :cond_1

    const/4 v2, 0x1

    .line 834
    .local v2, "result":Z
    :goto_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->getMaxInterval()I

    move-result v1

    .line 835
    .local v1, "max_interval":I
    add-int/lit8 v0, v0, 0x1

    .line 836
    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 837
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->setCurInterval(I)V

    .line 839
    return v2

    .line 832
    .end local v1    # "max_interval":I
    .end local v2    # "result":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method usesVirtualCurrency()Z
    .locals 3

    .prologue
    .line 790
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "uses_virtual_currency"

    const-string v2, "NO"

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method vcPlaycap()I
    .locals 3

    .prologue
    .line 800
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "vc_playcap"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method vcRewardAmount()I
    .locals 3

    .prologue
    .line 799
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "vc_reward_amount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method vcRewardName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 798
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "vc_reward_name"

    const-string v2, "undefined"

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
