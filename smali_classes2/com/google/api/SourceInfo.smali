.class public final Lcom/google/api/SourceInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceInfo.java"

# interfaces
.implements Lcom/google/api/SourceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/SourceInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/SourceInfo;",
        "Lcom/google/api/SourceInfo$Builder;",
        ">;",
        "Lcom/google/api/SourceInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/SourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_FILES_FIELD_NUMBER:I = 0x1


# instance fields
.field private sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 463
    new-instance v0, Lcom/google/api/SourceInfo;

    invoke-direct {v0}, Lcom/google/api/SourceInfo;-><init>()V

    .line 466
    sput-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    .line 467
    const-class v1, Lcom/google/api/SourceInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/api/SourceInfo;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/SourceInfo;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/SourceInfo;ILcom/google/protobuf/Any;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/api/SourceInfo;->setSourceFiles(ILcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/SourceInfo;Lcom/google/protobuf/Any;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/SourceInfo;->addSourceFiles(Lcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/SourceInfo;ILcom/google/protobuf/Any;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/api/SourceInfo;->addSourceFiles(ILcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/SourceInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/SourceInfo;->addAllSourceFiles(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/SourceInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/api/SourceInfo;->clearSourceFiles()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/SourceInfo;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/SourceInfo;->removeSourceFiles(I)V

    return-void
.end method

.method private addAllSourceFiles(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Any;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Lcom/google/api/SourceInfo;->ensureSourceFilesIsMutable()V

    .line 133
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addSourceFiles(ILcom/google/protobuf/Any;)V
    .locals 1

    .line 119
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    invoke-direct {p0}, Lcom/google/api/SourceInfo;->ensureSourceFilesIsMutable()V

    .line 121
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSourceFiles(Lcom/google/protobuf/Any;)V
    .locals 1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    invoke-direct {p0}, Lcom/google/api/SourceInfo;->ensureSourceFilesIsMutable()V

    .line 108
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearSourceFiles()V
    .locals 1

    .line 144
    invoke-static {}, Lcom/google/api/SourceInfo;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureSourceFilesIsMutable()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 81
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/SourceInfo;
    .locals 1

    .line 472
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/SourceInfo$Builder;
    .locals 1

    .line 233
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-virtual {v0}, Lcom/google/api/SourceInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/SourceInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/SourceInfo;)Lcom/google/api/SourceInfo$Builder;
    .locals 1

    .line 236
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-virtual {v0, p0}, Lcom/google/api/SourceInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/SourceInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/SourceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0}, Lcom/google/api/SourceInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SourceInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SourceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/api/SourceInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SourceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/SourceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 174
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SourceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SourceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SourceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/SourceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SourceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SourceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SourceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/SourceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SourceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SourceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SourceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/SourceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SourceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SourceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SourceInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/SourceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SourceInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SourceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 193
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SourceInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/SourceInfo;",
            ">;"
        }
    .end annotation

    .line 478
    sget-object v0, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-virtual {v0}, Lcom/google/api/SourceInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeSourceFiles(I)V
    .locals 1

    .line 154
    invoke-direct {p0}, Lcom/google/api/SourceInfo;->ensureSourceFilesIsMutable()V

    .line 155
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setSourceFiles(ILcom/google/protobuf/Any;)V
    .locals 1

    .line 94
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    invoke-direct {p0}, Lcom/google/api/SourceInfo;->ensureSourceFilesIsMutable()V

    .line 96
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 414
    sget-object p2, Lcom/google/api/SourceInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 456
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 450
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 435
    :pswitch_2
    sget-object p1, Lcom/google/api/SourceInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 437
    const-class p2, Lcom/google/api/SourceInfo;

    monitor-enter p2

    .line 438
    :try_start_0
    sget-object p1, Lcom/google/api/SourceInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 440
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 443
    sput-object p1, Lcom/google/api/SourceInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 445
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

    .line 432
    :pswitch_3
    sget-object p1, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    .line 422
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "sourceFiles_"

    aput-object v0, p1, p3

    const-class p3, Lcom/google/protobuf/Any;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 428
    sget-object p3, Lcom/google/api/SourceInfo;->DEFAULT_INSTANCE:Lcom/google/api/SourceInfo;

    invoke-static {p3, p2, p1}, Lcom/google/api/SourceInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 419
    :pswitch_5
    new-instance p1, Lcom/google/api/SourceInfo$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/SourceInfo$Builder;-><init>(Lcom/google/api/SourceInfo$1;)V

    return-object p1

    .line 416
    :pswitch_6
    new-instance p1, Lcom/google/api/SourceInfo;

    invoke-direct {p1}, Lcom/google/api/SourceInfo;-><init>()V

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

.method public getSourceFiles(I)Lcom/google/protobuf/Any;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    return-object p1
.end method

.method public getSourceFilesCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getSourceFilesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSourceFilesOrBuilder(I)Lcom/google/protobuf/AnyOrBuilder;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/AnyOrBuilder;

    return-object p1
.end method

.method public getSourceFilesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/api/SourceInfo;->sourceFiles_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
