.class public final Lcom/google/api/Endpoint;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Endpoint.java"

# interfaces
.implements Lcom/google/api/EndpointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Endpoint$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Endpoint;",
        "Lcom/google/api/Endpoint$Builder;",
        ">;",
        "Lcom/google/api/EndpointOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALIASES_FIELD_NUMBER:I = 0x2

.field public static final ALLOW_CORS_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

.field public static final FEATURES_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Endpoint;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_FIELD_NUMBER:I = 0x65


# instance fields
.field private aliases_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowCors_:Z

.field private features_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private target_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1195
    new-instance v0, Lcom/google/api/Endpoint;

    invoke-direct {v0}, Lcom/google/api/Endpoint;-><init>()V

    .line 1198
    sput-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    .line 1199
    const-class v1, Lcom/google/api/Endpoint;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/google/api/Endpoint;->name_:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Endpoint;->aliases_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 34
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Endpoint;->features_:Lcom/google/protobuf/Internal$ProtobufList;

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/google/api/Endpoint;->target_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/Endpoint;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/Endpoint;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/api/Endpoint;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/Endpoint;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/api/Endpoint;->addFeatures(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/Endpoint;Ljava/lang/Iterable;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/api/Endpoint;->addAllFeatures(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/Endpoint;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/api/Endpoint;->clearFeatures()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/Endpoint;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/api/Endpoint;->addFeaturesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/Endpoint;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/api/Endpoint;->setTarget(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/Endpoint;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/api/Endpoint;->clearTarget()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/api/Endpoint;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/api/Endpoint;->setTargetBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/api/Endpoint;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/api/Endpoint;->setAllowCors(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/api/Endpoint;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/api/Endpoint;->clearAllowCors()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/Endpoint;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/api/Endpoint;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/Endpoint;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/api/Endpoint;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/Endpoint;ILjava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/api/Endpoint;->setAliases(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/Endpoint;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/api/Endpoint;->addAliases(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/Endpoint;Ljava/lang/Iterable;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/api/Endpoint;->addAllAliases(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/Endpoint;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/api/Endpoint;->clearAliases()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/Endpoint;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/api/Endpoint;->addAliasesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/Endpoint;ILjava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/api/Endpoint;->setFeatures(ILjava/lang/String;)V

    return-void
.end method

.method private addAliases(Ljava/lang/String;)V
    .locals 1

    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    invoke-direct {p0}, Lcom/google/api/Endpoint;->ensureAliasesIsMutable()V

    .line 209
    iget-object v0, p0, Lcom/google/api/Endpoint;->aliases_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAliasesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 254
    invoke-static {p1}, Lcom/google/api/Endpoint;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 255
    invoke-direct {p0}, Lcom/google/api/Endpoint;->ensureAliasesIsMutable()V

    .line 256
    iget-object v0, p0, Lcom/google/api/Endpoint;->aliases_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllAliases(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-direct {p0}, Lcom/google/api/Endpoint;->ensureAliasesIsMutable()V

    .line 225
    iget-object v0, p0, Lcom/google/api/Endpoint;->aliases_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllFeatures(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 358
    invoke-direct {p0}, Lcom/google/api/Endpoint;->ensureFeaturesIsMutable()V

    .line 359
    iget-object v0, p0, Lcom/google/api/Endpoint;->features_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addFeatures(Ljava/lang/String;)V
    .locals 1

    .line 344
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    invoke-direct {p0}, Lcom/google/api/Endpoint;->ensureFeaturesIsMutable()V

    .line 346
    iget-object v0, p0, Lcom/google/api/Endpoint;->features_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addFeaturesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 382
    invoke-static {p1}, Lcom/google/api/Endpoint;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 383
    invoke-direct {p0}, Lcom/google/api/Endpoint;->ensureFeaturesIsMutable()V

    .line 384
    iget-object v0, p0, Lcom/google/api/Endpoint;->features_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAliases()V
    .locals 1

    .line 239
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Endpoint;->aliases_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearAllowCors()V
    .locals 1

    const/4 v0, 0x0

    .line 524
    iput-boolean v0, p0, Lcom/google/api/Endpoint;->allowCors_:Z

    return-void
.end method

.method private clearFeatures()V
    .locals 1

    .line 370
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Endpoint;->features_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 87
    invoke-static {}, Lcom/google/api/Endpoint;->getDefaultInstance()Lcom/google/api/Endpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Endpoint;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearTarget()V
    .locals 1

    .line 453
    invoke-static {}, Lcom/google/api/Endpoint;->getDefaultInstance()Lcom/google/api/Endpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getTarget()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Endpoint;->target_:Ljava/lang/String;

    return-void
.end method

.method private ensureAliasesIsMutable()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/api/Endpoint;->aliases_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/api/Endpoint;->aliases_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 173
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Endpoint;->aliases_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureFeaturesIsMutable()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/google/api/Endpoint;->features_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/api/Endpoint;->features_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 316
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Endpoint;->features_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Endpoint;
    .locals 1

    .line 1204
    sget-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 602
    sget-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Endpoint$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Endpoint;)Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 605
    sget-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    invoke-virtual {v0, p0}, Lcom/google/api/Endpoint;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/Endpoint$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Endpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    sget-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    invoke-static {v0, p0}, Lcom/google/api/Endpoint;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Endpoint;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Endpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    sget-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    invoke-static {v0, p0, p1}, Lcom/google/api/Endpoint;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Endpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Endpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 543
    sget-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Endpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Endpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 550
    sget-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Endpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Endpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    sget-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Endpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Endpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    sget-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Endpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Endpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    sget-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Endpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Endpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    sget-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Endpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Endpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 530
    sget-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Endpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Endpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 537
    sget-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Endpoint;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/Endpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 555
    sget-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Endpoint;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Endpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 562
    sget-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Endpoint;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Endpoint;",
            ">;"
        }
    .end annotation

    .line 1210
    sget-object v0, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAliases(ILjava/lang/String;)V
    .locals 1

    .line 190
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    invoke-direct {p0}, Lcom/google/api/Endpoint;->ensureAliasesIsMutable()V

    .line 192
    iget-object v0, p0, Lcom/google/api/Endpoint;->aliases_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setAllowCors(Z)V
    .locals 0

    .line 508
    iput-boolean p1, p0, Lcom/google/api/Endpoint;->allowCors_:Z

    return-void
.end method

.method private setFeatures(ILjava/lang/String;)V
    .locals 1

    .line 330
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    invoke-direct {p0}, Lcom/google/api/Endpoint;->ensureFeaturesIsMutable()V

    .line 332
    iget-object v0, p0, Lcom/google/api/Endpoint;->features_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    iput-object p1, p0, Lcom/google/api/Endpoint;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 99
    invoke-static {p1}, Lcom/google/api/Endpoint;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 100
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Endpoint;->name_:Ljava/lang/String;

    return-void
.end method

.method private setTarget(Ljava/lang/String;)V
    .locals 0

    .line 436
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    iput-object p1, p0, Lcom/google/api/Endpoint;->target_:Ljava/lang/String;

    return-void
.end method

.method private setTargetBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 469
    invoke-static {p1}, Lcom/google/api/Endpoint;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 470
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Endpoint;->target_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1142
    sget-object p2, Lcom/google/api/Endpoint$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1188
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1182
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1167
    :pswitch_2
    sget-object p1, Lcom/google/api/Endpoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1169
    const-class p2, Lcom/google/api/Endpoint;

    monitor-enter p2

    .line 1170
    :try_start_0
    sget-object p1, Lcom/google/api/Endpoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1172
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1175
    sput-object p1, Lcom/google/api/Endpoint;->PARSER:Lcom/google/protobuf/Parser;

    .line 1177
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

    .line 1164
    :pswitch_3
    sget-object p1, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    .line 1150
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "name_"

    aput-object v0, p1, p3

    const-string p3, "aliases_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "features_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "allowCors_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "target_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001e\u0005\u0000\u0002\u0000\u0001\u0208\u0002\u021a\u0004\u021a\u0005\u0007e\u0208"

    .line 1160
    sget-object p3, Lcom/google/api/Endpoint;->DEFAULT_INSTANCE:Lcom/google/api/Endpoint;

    invoke-static {p3, p2, p1}, Lcom/google/api/Endpoint;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1147
    :pswitch_5
    new-instance p1, Lcom/google/api/Endpoint$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/Endpoint$Builder;-><init>(Lcom/google/api/Endpoint$1;)V

    return-object p1

    .line 1144
    :pswitch_6
    new-instance p1, Lcom/google/api/Endpoint;

    invoke-direct {p1}, Lcom/google/api/Endpoint;-><init>()V

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

.method public getAliases(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/google/api/Endpoint;->aliases_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAliasesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/google/api/Endpoint;->aliases_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 168
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 167
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAliasesCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/google/api/Endpoint;->aliases_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getAliasesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/api/Endpoint;->aliases_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAllowCors()Z
    .locals 1

    .line 491
    iget-boolean v0, p0, Lcom/google/api/Endpoint;->allowCors_:Z

    return v0
.end method

.method public getFeatures(I)Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/google/api/Endpoint;->features_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getFeaturesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/google/api/Endpoint;->features_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 311
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 310
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getFeaturesCount()I
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/google/api/Endpoint;->features_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getFeaturesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/google/api/Endpoint;->features_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/api/Endpoint;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/api/Endpoint;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/google/api/Endpoint;->target_:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/google/api/Endpoint;->target_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
