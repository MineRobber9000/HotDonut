.class final Lcom/amazon/android/f/a;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field b:Landroid/app/Activity;

.field private final c:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/f/a;->c:Landroid/content/Intent;

    iput p2, p0, Lcom/amazon/android/f/a;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/amazon/android/f/c;->a()Lcom/amazon/android/framework/util/KiwiLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling startActivityForResult from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/android/f/a;->c:Landroid/content/Intent;

    iget v1, p0, Lcom/amazon/android/f/a;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iput-object p1, p0, Lcom/amazon/android/f/a;->b:Landroid/app/Activity;

    return-void
.end method
