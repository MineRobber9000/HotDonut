.class final Lcom/flurry/android/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field b:Lcom/flurry/android/v;

.field c:J

.field d:Ljava/util/List;

.field private e:B


# direct methods
.method constructor <init>(Ljava/lang/String;BJ)V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/p;->d:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/flurry/android/p;->a:Ljava/lang/String;

    .line 24
    iput-byte p2, p0, Lcom/flurry/android/p;->e:B

    .line 26
    iget-object v0, p0, Lcom/flurry/android/p;->d:Ljava/util/List;

    new-instance v1, Lcom/flurry/android/f;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p3, p4}, Lcom/flurry/android/f;-><init>(BJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method


# virtual methods
.method final a()J
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flurry/android/p;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/f;

    iget-wide v0, v0, Lcom/flurry/android/f;->b:J

    return-wide v0
.end method

.method final a(Lcom/flurry/android/f;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/flurry/android/p;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method final a(Ljava/io/DataOutput;)V
    .locals 4

    .prologue
    const-wide/16 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/flurry/android/p;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 48
    iget-byte v0, p0, Lcom/flurry/android/p;->e:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 50
    iget-object v0, p0, Lcom/flurry/android/p;->b:Lcom/flurry/android/v;

    if-nez v0, :cond_0

    .line 52
    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 53
    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 54
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/flurry/android/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 66
    iget-object v0, p0, Lcom/flurry/android/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/f;

    .line 68
    iget-byte v2, v0, Lcom/flurry/android/f;->a:B

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 69
    iget-wide v2, v0, Lcom/flurry/android/f;->b:J

    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/p;->b:Lcom/flurry/android/v;

    iget-wide v0, v0, Lcom/flurry/android/v;->a:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 59
    iget-object v0, p0, Lcom/flurry/android/p;->b:Lcom/flurry/android/v;

    iget-wide v0, v0, Lcom/flurry/android/v;->e:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 60
    iget-object v0, p0, Lcom/flurry/android/p;->b:Lcom/flurry/android/v;

    iget-object v0, v0, Lcom/flurry/android/v;->g:[B

    .line 61
    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 62
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{hook: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/android/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ad: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/android/p;->b:Lcom/flurry/android/v;

    iget-object v2, v2, Lcom/flurry/android/v;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", transitions: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v0, p0, Lcom/flurry/android/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/f;

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 83
    :cond_0
    const-string v0, "]}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
