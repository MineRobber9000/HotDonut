.class public abstract Lcom/amazon/android/o/b;
.super Lcom/amazon/android/i/b;


# instance fields
.field final a:Ljava/lang/Object;

.field private final b:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/android/i/b;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/o/b;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/amazon/android/o/b;->b:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final getExpiration()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/o/b;->b:Ljava/util/Date;

    return-object v0
.end method
