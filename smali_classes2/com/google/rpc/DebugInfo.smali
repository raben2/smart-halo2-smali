.class public final Lcom/google/rpc/DebugInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DebugInfo.java"

# interfaces
.implements Lcom/google/rpc/DebugInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/DebugInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/DebugInfo;",
        "Lcom/google/rpc/DebugInfo$Builder;",
        ">;",
        "Lcom/google/rpc/DebugInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

.field public static final DETAIL_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/DebugInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STACK_ENTRIES_FIELD_NUMBER:I = 0x1


# instance fields
.field private detail_:Ljava/lang/String;

.field private stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 570
    new-instance v0, Lcom/google/rpc/DebugInfo;

    invoke-direct {v0}, Lcom/google/rpc/DebugInfo;-><init>()V

    .line 573
    sput-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    .line 574
    const-class v1, Lcom/google/rpc/DebugInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/google/rpc/DebugInfo;->detail_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/rpc/DebugInfo;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/rpc/DebugInfo;ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/DebugInfo;->setStackEntries(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/rpc/DebugInfo;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/rpc/DebugInfo;->addStackEntries(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/rpc/DebugInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/rpc/DebugInfo;->addAllStackEntries(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/rpc/DebugInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/rpc/DebugInfo;->clearStackEntries()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/rpc/DebugInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/rpc/DebugInfo;->addStackEntriesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/rpc/DebugInfo;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/rpc/DebugInfo;->setDetail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/rpc/DebugInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/rpc/DebugInfo;->clearDetail()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/rpc/DebugInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/rpc/DebugInfo;->setDetailBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllStackEntries(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lcom/google/rpc/DebugInfo;->ensureStackEntriesIsMutable()V

    .line 122
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addStackEntries(Ljava/lang/String;)V
    .locals 1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    invoke-direct {p0}, Lcom/google/rpc/DebugInfo;->ensureStackEntriesIsMutable()V

    .line 109
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addStackEntriesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 145
    invoke-static {p1}, Lcom/google/rpc/DebugInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 146
    invoke-direct {p0}, Lcom/google/rpc/DebugInfo;->ensureStackEntriesIsMutable()V

    .line 147
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearDetail()V
    .locals 1

    .line 200
    invoke-static {}, Lcom/google/rpc/DebugInfo;->getDefaultInstance()Lcom/google/rpc/DebugInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/DebugInfo;->getDetail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/DebugInfo;->detail_:Ljava/lang/String;

    return-void
.end method

.method private clearStackEntries()V
    .locals 1

    .line 133
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureStackEntriesIsMutable()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 79
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/DebugInfo;
    .locals 1

    .line 579
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/DebugInfo$Builder;
    .locals 1

    .line 292
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-virtual {v0}, Lcom/google/rpc/DebugInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/DebugInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/DebugInfo;)Lcom/google/rpc/DebugInfo$Builder;
    .locals 1

    .line 295
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-virtual {v0, p0}, Lcom/google/rpc/DebugInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/DebugInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0}, Lcom/google/rpc/DebugInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/DebugInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/DebugInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/DebugInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 233
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/DebugInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 240
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/DebugInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/DebugInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/DebugInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/DebugInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/DebugInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/DebugInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 227
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/DebugInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/rpc/DebugInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/DebugInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/DebugInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/DebugInfo;",
            ">;"
        }
    .end annotation

    .line 585
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-virtual {v0}, Lcom/google/rpc/DebugInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDetail(Ljava/lang/String;)V
    .locals 0

    .line 187
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    iput-object p1, p0, Lcom/google/rpc/DebugInfo;->detail_:Ljava/lang/String;

    return-void
.end method

.method private setDetailBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 212
    invoke-static {p1}, Lcom/google/rpc/DebugInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 213
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/DebugInfo;->detail_:Ljava/lang/String;

    return-void
.end method

.method private setStackEntries(ILjava/lang/String;)V
    .locals 1

    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-direct {p0}, Lcom/google/rpc/DebugInfo;->ensureStackEntriesIsMutable()V

    .line 95
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 520
    sget-object p2, Lcom/google/rpc/DebugInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 563
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 557
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 542
    :pswitch_2
    sget-object p1, Lcom/google/rpc/DebugInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 544
    const-class p2, Lcom/google/rpc/DebugInfo;

    monitor-enter p2

    .line 545
    :try_start_0
    sget-object p1, Lcom/google/rpc/DebugInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 547
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 550
    sput-object p1, Lcom/google/rpc/DebugInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 552
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

    .line 539
    :pswitch_3
    sget-object p1, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    .line 528
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "stackEntries_"

    aput-object v0, p1, p3

    const-string p3, "detail_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u021a\u0002\u0208"

    .line 535
    sget-object p3, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {p3, p2, p1}, Lcom/google/rpc/DebugInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 525
    :pswitch_5
    new-instance p1, Lcom/google/rpc/DebugInfo$Builder;

    invoke-direct {p1, p3}, Lcom/google/rpc/DebugInfo$Builder;-><init>(Lcom/google/rpc/DebugInfo$1;)V

    return-object p1

    .line 522
    :pswitch_6
    new-instance p1, Lcom/google/rpc/DebugInfo;

    invoke-direct {p1}, Lcom/google/rpc/DebugInfo;-><init>()V

    return-object p1

    nop

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

.method public getDetail()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->detail_:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->detail_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStackEntries(I)Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStackEntriesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 74
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getStackEntriesCount()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getStackEntriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
