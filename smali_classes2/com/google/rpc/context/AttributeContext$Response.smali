.class public final Lcom/google/rpc/context/AttributeContext$Response;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/context/AttributeContext$Response$Builder;,
        Lcom/google/rpc/context/AttributeContext$Response$HeadersDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/context/AttributeContext$Response;",
        "Lcom/google/rpc/context/AttributeContext$Response$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$ResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

.field public static final HEADERS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/context/AttributeContext$Response;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIZE_FIELD_NUMBER:I = 0x2

.field public static final TIME_FIELD_NUMBER:I = 0x4


# instance fields
.field private code_:J

.field private headers_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private size_:J

.field private time_:Lcom/google/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7044
    new-instance v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-direct {v0}, Lcom/google/rpc/context/AttributeContext$Response;-><init>()V

    .line 7047
    sput-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    .line 7048
    const-class v1, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6315
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6406
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response;->headers_:Lcom/google/protobuf/MapFieldLite;

    return-void
.end method

.method static synthetic access$8400()Lcom/google/rpc/context/AttributeContext$Response;
    .locals 1

    .line 6310
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/google/rpc/context/AttributeContext$Response;J)V
    .locals 0

    .line 6310
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Response;->setCode(J)V

    return-void
.end method

.method static synthetic access$8600(Lcom/google/rpc/context/AttributeContext$Response;)V
    .locals 0

    .line 6310
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Response;->clearCode()V

    return-void
.end method

.method static synthetic access$8700(Lcom/google/rpc/context/AttributeContext$Response;J)V
    .locals 0

    .line 6310
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Response;->setSize(J)V

    return-void
.end method

.method static synthetic access$8800(Lcom/google/rpc/context/AttributeContext$Response;)V
    .locals 0

    .line 6310
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Response;->clearSize()V

    return-void
.end method

.method static synthetic access$8900(Lcom/google/rpc/context/AttributeContext$Response;)Ljava/util/Map;
    .locals 0

    .line 6310
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Response;->getMutableHeadersMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9000(Lcom/google/rpc/context/AttributeContext$Response;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 6310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Response;->setTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/google/rpc/context/AttributeContext$Response;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 6310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Response;->mergeTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/google/rpc/context/AttributeContext$Response;)V
    .locals 0

    .line 6310
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Response;->clearTime()V

    return-void
.end method

.method private clearCode()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6352
    iput-wide v0, p0, Lcom/google/rpc/context/AttributeContext$Response;->code_:J

    return-void
.end method

.method private clearSize()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6390
    iput-wide v0, p0, Lcom/google/rpc/context/AttributeContext$Response;->size_:J

    return-void
.end method

.method private clearTime()V
    .locals 1

    const/4 v0, 0x0

    .line 6583
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response;->time_:Lcom/google/protobuf/Timestamp;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Response;
    .locals 1

    .line 7053
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    return-object v0
.end method

.method private getMutableHeadersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6513
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Response;->internalGetMutableHeaders()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetHeaders()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6409
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response;->headers_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableHeaders()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6413
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response;->headers_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6414
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response;->headers_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response;->headers_:Lcom/google/protobuf/MapFieldLite;

    .line 6416
    :cond_0
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response;->headers_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private mergeTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2

    .line 6565
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6566
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response;->time_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 6567
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6568
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response;->time_:Lcom/google/protobuf/Timestamp;

    .line 6569
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Response;->time_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 6571
    :cond_0
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Response;->time_:Lcom/google/protobuf/Timestamp;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1

    .line 6662
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/context/AttributeContext$Response;)Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1

    .line 6665
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-virtual {v0, p0}, Lcom/google/rpc/context/AttributeContext$Response;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6639
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p0}, Lcom/google/rpc/context/AttributeContext$Response;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Response;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6645
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/context/AttributeContext$Response;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6603
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6610
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/context/AttributeContext$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6650
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6657
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6627
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6634
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/context/AttributeContext$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6590
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6597
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Response;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/rpc/context/AttributeContext$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6615
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Response;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6622
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Response;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/context/AttributeContext$Response;",
            ">;"
        }
    .end annotation

    .line 7059
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCode(J)V
    .locals 0

    .line 6341
    iput-wide p1, p0, Lcom/google/rpc/context/AttributeContext$Response;->code_:J

    return-void
.end method

.method private setSize(J)V
    .locals 0

    .line 6379
    iput-wide p1, p0, Lcom/google/rpc/context/AttributeContext$Response;->size_:J

    return-void
.end method

.method private setTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 6551
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6552
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Response;->time_:Lcom/google/protobuf/Timestamp;

    return-void
.end method


# virtual methods
.method public containsHeaders(Ljava/lang/String;)Z
    .locals 1

    .line 6436
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6437
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Response;->internalGetHeaders()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6991
    sget-object p2, Lcom/google/rpc/context/AttributeContext$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7037
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 7031
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7016
    :pswitch_2
    sget-object p1, Lcom/google/rpc/context/AttributeContext$Response;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 7018
    const-class p2, Lcom/google/rpc/context/AttributeContext$Response;

    monitor-enter p2

    .line 7019
    :try_start_0
    sget-object p1, Lcom/google/rpc/context/AttributeContext$Response;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7021
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7024
    sput-object p1, Lcom/google/rpc/context/AttributeContext$Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 7026
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

    .line 7013
    :pswitch_3
    sget-object p1, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    .line 6999
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "code_"

    aput-object v0, p1, p3

    const-string p3, "size_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "headers_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    sget-object p3, Lcom/google/rpc/context/AttributeContext$Response$HeadersDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "time_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0001\u0000\u0000\u0001\u0002\u0002\u0002\u00032\u0004\t"

    .line 7009
    sget-object p3, Lcom/google/rpc/context/AttributeContext$Response;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {p3, p2, p1}, Lcom/google/rpc/context/AttributeContext$Response;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6996
    :pswitch_5
    new-instance p1, Lcom/google/rpc/context/AttributeContext$Response$Builder;

    invoke-direct {p1, p3}, Lcom/google/rpc/context/AttributeContext$Response$Builder;-><init>(Lcom/google/rpc/context/AttributeContext$1;)V

    return-object p1

    .line 6993
    :pswitch_6
    new-instance p1, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-direct {p1}, Lcom/google/rpc/context/AttributeContext$Response;-><init>()V

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

.method public getCode()J
    .locals 2

    .line 6329
    iget-wide v0, p0, Lcom/google/rpc/context/AttributeContext$Response;->code_:J

    return-wide v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6445
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersCount()I
    .locals 1

    .line 6421
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Response;->internalGetHeaders()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6460
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Response;->internalGetHeaders()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 6459
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 6476
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6478
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Response;->internalGetHeaders()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 6479
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2
.end method

.method public getHeadersOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 6494
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6496
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Response;->internalGetHeaders()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 6497
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6500
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 6498
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getSize()J
    .locals 2

    .line 6367
    iget-wide v0, p0, Lcom/google/rpc/context/AttributeContext$Response;->size_:J

    return-wide v0
.end method

.method public getTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 6540
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response;->time_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasTime()Z
    .locals 1

    .line 6528
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response;->time_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
