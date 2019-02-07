.class public Lcom/amazon/ags/overlay/PopUpContent;
.super Ljava/lang/Object;
.source "PopUpContent.java"


# instance fields
.field private final overlayActionCode:I

.field private final overlayData:Landroid/os/Bundle;

.field private final remoteViews:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(ILandroid/widget/RemoteViews;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "overlayActionCode"    # I
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "overlayData"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/amazon/ags/overlay/PopUpContent;->overlayActionCode:I

    .line 30
    iput-object p2, p0, Lcom/amazon/ags/overlay/PopUpContent;->remoteViews:Landroid/widget/RemoteViews;

    .line 31
    iput-object p3, p0, Lcom/amazon/ags/overlay/PopUpContent;->overlayData:Landroid/os/Bundle;

    .line 32
    return-void
.end method


# virtual methods
.method public final getOverlayActionCode()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/amazon/ags/overlay/PopUpContent;->overlayActionCode:I

    return v0
.end method

.method public final getOverlayData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazon/ags/overlay/PopUpContent;->overlayData:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/ags/overlay/PopUpContent;->remoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PopUpContent -\n + overlayActionCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazon/ags/overlay/PopUpContent;->overlayActionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n + remoteViews: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ags/overlay/PopUpContent;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n + overlayData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ags/overlay/PopUpContent;->overlayData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
