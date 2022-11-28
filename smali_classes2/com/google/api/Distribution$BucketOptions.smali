.class public final Lcom/google/api/Distribution$BucketOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/Distribution$BucketOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BucketOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Distribution$BucketOptions$Builder;,
        Lcom/google/api/Distribution$BucketOptions$OptionsCase;,
        Lcom/google/api/Distribution$BucketOptions$Explicit;,
        Lcom/google/api/Distribution$BucketOptions$ExplicitOrBuilder;,
        Lcom/google/api/Distribution$BucketOptions$Exponential;,
        Lcom/google/api/Distribution$BucketOptions$ExponentialOrBuilder;,
        Lcom/google/api/Distribution$BucketOptions$Linear;,
        Lcom/google/api/Distribution$BucketOptions$LinearOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Distribution$BucketOptions;",
        "Lcom/google/api/Distribution$BucketOptions$Builder;",
        ">;",
        "Lcom/google/api/Distribution$BucketOptionsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

.field public static final EXPLICIT_BUCKETS_FIELD_NUMBER:I = 0x3

.field public static final EXPONENTIAL_BUCKETS_FIELD_NUMBER:I = 0x2

.field public static final LINEAR_BUCKETS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Distribution$BucketOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private optionsCase_:I

.field private options_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2517
    new-instance v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-direct {v0}, Lcom/google/api/Distribution$BucketOptions;-><init>()V

    .line 2520
    sput-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    .line 2521
    const-class v1, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 490
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1862
    iput v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    return-void
.end method

.method static synthetic access$2800()Lcom/google/api/Distribution$BucketOptions;
    .locals 1

    .line 485
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/api/Distribution$BucketOptions;)V
    .locals 0

    .line 485
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions;->clearOptions()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Linear;)V
    .locals 0

    .line 485
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$BucketOptions;->setLinearBuckets(Lcom/google/api/Distribution$BucketOptions$Linear;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Linear;)V
    .locals 0

    .line 485
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$BucketOptions;->mergeLinearBuckets(Lcom/google/api/Distribution$BucketOptions$Linear;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/api/Distribution$BucketOptions;)V
    .locals 0

    .line 485
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions;->clearLinearBuckets()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Exponential;)V
    .locals 0

    .line 485
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$BucketOptions;->setExponentialBuckets(Lcom/google/api/Distribution$BucketOptions$Exponential;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Exponential;)V
    .locals 0

    .line 485
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$BucketOptions;->mergeExponentialBuckets(Lcom/google/api/Distribution$BucketOptions$Exponential;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/api/Distribution$BucketOptions;)V
    .locals 0

    .line 485
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions;->clearExponentialBuckets()V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Explicit;)V
    .locals 0

    .line 485
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$BucketOptions;->setExplicitBuckets(Lcom/google/api/Distribution$BucketOptions$Explicit;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Explicit;)V
    .locals 0

    .line 485
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$BucketOptions;->mergeExplicitBuckets(Lcom/google/api/Distribution$BucketOptions$Explicit;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/api/Distribution$BucketOptions;)V
    .locals 0

    .line 485
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions;->clearExplicitBuckets()V

    return-void
.end method

.method private clearExplicitBuckets()V
    .locals 2

    .line 2111
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2112
    iput v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v0, 0x0

    .line 2113
    iput-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearExponentialBuckets()V
    .locals 2

    .line 2041
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2042
    iput v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v0, 0x0

    .line 2043
    iput-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearLinearBuckets()V
    .locals 2

    .line 1971
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1972
    iput v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v0, 0x0

    .line 1973
    iput-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOptions()V
    .locals 1

    const/4 v0, 0x0

    .line 1903
    iput v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v0, 0x0

    .line 1904
    iput-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Distribution$BucketOptions;
    .locals 1

    .line 2526
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    return-object v0
.end method

.method private mergeExplicitBuckets(Lcom/google/api/Distribution$BucketOptions$Explicit;)V
    .locals 3

    .line 2093
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2094
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    .line 2095
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Explicit;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2096
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$Explicit;->newBuilder(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;

    move-result-object v0

    .line 2097
    invoke-virtual {v0, p1}, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;

    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    goto :goto_0

    .line 2099
    :cond_0
    iput-object p1, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    .line 2101
    :goto_0
    iput v1, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    return-void
.end method

.method private mergeExponentialBuckets(Lcom/google/api/Distribution$BucketOptions$Exponential;)V
    .locals 3

    .line 2023
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2024
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    .line 2025
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Exponential;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Exponential;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$Exponential;->newBuilder(Lcom/google/api/Distribution$BucketOptions$Exponential;)Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;

    move-result-object v0

    .line 2027
    invoke-virtual {v0, p1}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;

    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    goto :goto_0

    .line 2029
    :cond_0
    iput-object p1, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    .line 2031
    :goto_0
    iput v1, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    return-void
.end method

.method private mergeLinearBuckets(Lcom/google/api/Distribution$BucketOptions$Linear;)V
    .locals 3

    .line 1953
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1954
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    .line 1955
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Linear;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Linear;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Linear;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$Linear;->newBuilder(Lcom/google/api/Distribution$BucketOptions$Linear;)Lcom/google/api/Distribution$BucketOptions$Linear$Builder;

    move-result-object v0

    .line 1957
    invoke-virtual {v0, p1}, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;

    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    goto :goto_0

    .line 1959
    :cond_0
    iput-object p1, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    .line 1961
    :goto_0
    iput v1, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2192
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2195
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0, p0}, Lcom/google/api/Distribution$BucketOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2169
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p0}, Lcom/google/api/Distribution$BucketOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2175
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p0, p1}, Lcom/google/api/Distribution$BucketOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2133
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2140
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2180
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2187
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2157
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2164
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2120
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2127
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2145
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$BucketOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2152
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Distribution$BucketOptions;",
            ">;"
        }
    .end annotation

    .line 2532
    sget-object v0, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setExplicitBuckets(Lcom/google/api/Distribution$BucketOptions$Explicit;)V
    .locals 0

    .line 2081
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2082
    iput-object p1, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 2083
    iput p1, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    return-void
.end method

.method private setExponentialBuckets(Lcom/google/api/Distribution$BucketOptions$Exponential;)V
    .locals 0

    .line 2011
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2012
    iput-object p1, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 2013
    iput p1, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    return-void
.end method

.method private setLinearBuckets(Lcom/google/api/Distribution$BucketOptions$Linear;)V
    .locals 0

    .line 1941
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1942
    iput-object p1, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1943
    iput p1, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2464
    sget-object p2, Lcom/google/api/Distribution$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2510
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2504
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2489
    :pswitch_2
    sget-object p1, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2491
    const-class p2, Lcom/google/api/Distribution$BucketOptions;

    monitor-enter p2

    .line 2492
    :try_start_0
    sget-object p1, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2494
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2497
    sput-object p1, Lcom/google/api/Distribution$BucketOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 2499
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 2486
    :pswitch_3
    sget-object p1, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    .line 2472
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "options_"

    aput-object v0, p1, p3

    const-string p3, "optionsCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-class p3, Lcom/google/api/Distribution$BucketOptions$Linear;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/api/Distribution$BucketOptions$Exponential;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lcom/google/api/Distribution$BucketOptions$Explicit;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000"

    .line 2482
    sget-object p3, Lcom/google/api/Distribution$BucketOptions;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions;

    invoke-static {p3, p2, p1}, Lcom/google/api/Distribution$BucketOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2469
    :pswitch_5
    new-instance p1, Lcom/google/api/Distribution$BucketOptions$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/Distribution$BucketOptions$Builder;-><init>(Lcom/google/api/Distribution$1;)V

    return-object p1

    .line 2466
    :pswitch_6
    new-instance p1, Lcom/google/api/Distribution$BucketOptions;

    invoke-direct {p1}, Lcom/google/api/Distribution$BucketOptions;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getExplicitBuckets()Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 2

    .line 2068
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2069
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0

    .line 2071
    :cond_0
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Explicit;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v0

    return-object v0
.end method

.method public getExponentialBuckets()Lcom/google/api/Distribution$BucketOptions$Exponential;
    .locals 2

    .line 1998
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1999
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    return-object v0

    .line 2001
    :cond_0
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Exponential;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Exponential;

    move-result-object v0

    return-object v0
.end method

.method public getLinearBuckets()Lcom/google/api/Distribution$BucketOptions$Linear;
    .locals 2

    .line 1928
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1929
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions;->options_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Linear;

    return-object v0

    .line 1931
    :cond_0
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Linear;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Linear;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCase()Lcom/google/api/Distribution$BucketOptions$OptionsCase;
    .locals 1

    .line 1898
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$OptionsCase;->forNumber(I)Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    move-result-object v0

    return-object v0
.end method

.method public hasExplicitBuckets()Z
    .locals 2

    .line 2057
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExponentialBuckets()Z
    .locals 2

    .line 1987
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLinearBuckets()Z
    .locals 2

    .line 1917
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions;->optionsCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
