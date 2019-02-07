.class public Lcom/amazon/mas/kiwi/util/SignatureInfo;
.super Ljava/lang/Object;
.source "SignatureInfo.java"


# static fields
.field private static final VALIDITY_REQUIREMENTS_FOR_CREATING_KEYSTORE:Ljava/lang/String;

.field private static final VALIDITY_REQUIREMENTS_FOR_RETRIEVING_KEYSTORE:Ljava/lang/String;


# instance fields
.field private certificateId:Ljava/lang/String;

.field private commonName:Ljava/lang/String;

.field private developerId:Ljava/lang/String;

.field private developerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v5, Lcom/amazon/mas/kiwi/util/SignatureInfo;

    .line 10
    const-string v0, "A valid instance of %s is required to have at least one non-blank ID, either developerId or certificateId, and at least one non-blank name, either developerName or commonName."

    new-array v1, v4, [Ljava/lang/Object;

    const-class v2, Lcom/amazon/mas/kiwi/util/SignatureInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->VALIDITY_REQUIREMENTS_FOR_CREATING_KEYSTORE:Ljava/lang/String;

    .line 14
    const-string v0, "A valid instance of %s is required to have a certificate ID."

    new-array v1, v4, [Ljava/lang/Object;

    const-class v2, Lcom/amazon/mas/kiwi/util/SignatureInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->VALIDITY_REQUIREMENTS_FOR_RETRIEVING_KEYSTORE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValidityRequirementsForCreatingKeystore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->VALIDITY_REQUIREMENTS_FOR_CREATING_KEYSTORE:Ljava/lang/String;

    return-object v0
.end method

.method public static getValidityRequirementsForRetrievingKeystore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->VALIDITY_REQUIREMENTS_FOR_RETRIEVING_KEYSTORE:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 112
    if-nez p1, :cond_0

    move v2, v4

    .line 118
    :goto_0
    return v2

    .line 113
    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 115
    goto :goto_0

    .line 117
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/amazon/mas/kiwi/util/SignatureInfo;

    move-object v1, v0

    .line 118
    .local v1, "rhs":Lcom/amazon/mas/kiwi/util/SignatureInfo;
    new-instance v2, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->certificateId:Ljava/lang/String;

    iget-object v4, v1, Lcom/amazon/mas/kiwi/util/SignatureInfo;->certificateId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->commonName:Ljava/lang/String;

    iget-object v4, v1, Lcom/amazon/mas/kiwi/util/SignatureInfo;->commonName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->developerId:Ljava/lang/String;

    iget-object v4, v1, Lcom/amazon/mas/kiwi/util/SignatureInfo;->developerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->developerName:Ljava/lang/String;

    iget-object v4, v1, Lcom/amazon/mas/kiwi/util/SignatureInfo;->developerName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v2

    goto :goto_0
.end method

.method public getCertificateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->certificateId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->commonName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->developerId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->developerName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->certificateId:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->developerId:Ljava/lang/String;

    .line 43
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->certificateId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->commonName:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->developerName:Ljava/lang/String;

    .line 50
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->commonName:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->certificateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->commonName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->developerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->developerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public isValidForCreatingKeystore()Z
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/amazon/mas/kiwi/util/SignatureInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/mas/kiwi/util/SignatureInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidForRetrievingKeyStore()Z
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/amazon/mas/kiwi/util/SignatureInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCertificateId(Ljava/lang/String;)V
    .locals 0
    .param p1, "certificateId"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->certificateId:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setCommonName(Ljava/lang/String;)V
    .locals 0
    .param p1, "commonName"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->commonName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setDeveloperId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->developerId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setDeveloperName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->developerName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCertificateId(Ljava/lang/String;)Lcom/amazon/mas/kiwi/util/SignatureInfo;
    .locals 0
    .param p1, "certificateId"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->certificateId:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public withCommonName(Ljava/lang/String;)Lcom/amazon/mas/kiwi/util/SignatureInfo;
    .locals 0
    .param p1, "commonName"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->commonName:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public withDeveloperId(Ljava/lang/String;)Lcom/amazon/mas/kiwi/util/SignatureInfo;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->developerId:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public withDeveloperName(Ljava/lang/String;)Lcom/amazon/mas/kiwi/util/SignatureInfo;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/amazon/mas/kiwi/util/SignatureInfo;->developerName:Ljava/lang/String;

    .line 72
    return-object p0
.end method
