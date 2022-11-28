.class public final Lcom/google/api/HttpBody;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HttpBody.java"

# interfaces
.implements Lcom/google/api/HttpBodyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/HttpBody$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/HttpBody;",
        "Lcom/google/api/HttpBody$Builder;",
        ">;",
        "Lcom/google/api/HttpBodyOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_FIELD_NUMBER:I = 0x1

.field public static final DATA_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

.field public static final EXTENSIONS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/HttpBody;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contentType_:Ljava/lang/String;

.field private data_:Lcom/google/protobuf/ByteString;

.field private extensions_:Lcom/google/protobuf/Internal$ProtobufList;
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

    .line 762
    new-instance v0, Lcom/google/api/HttpBody;

    invoke-direct {v0}, Lcom/google/api/HttpBody;-><init>()V

    .line 765
    sput-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    .line 766
    const-class v1, Lcom/google/api/HttpBody;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/google/api/HttpBody;->contentType_:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/api/HttpBody;->data_:Lcom/google/protobuf/ByteString;

    .line 49
    invoke-static {}, Lcom/google/api/HttpBody;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpBody;->extensions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/HttpBody;
    .locals 1

    .line 41
    sget-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/HttpBody;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/api/HttpBody;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/HttpBody;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/api/HttpBody;->clearExtensions()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/HttpBody;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/api/HttpBody;->removeExtensions(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/HttpBody;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/api/HttpBody;->clearContentType()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/HttpBody;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/api/HttpBody;->setContentTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/HttpBody;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/api/HttpBody;->setData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/HttpBody;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/api/HttpBody;->clearData()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/HttpBody;ILcom/google/protobuf/Any;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/api/HttpBody;->setExtensions(ILcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/HttpBody;Lcom/google/protobuf/Any;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/api/HttpBody;->addExtensions(Lcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/HttpBody;ILcom/google/protobuf/Any;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/api/HttpBody;->addExtensions(ILcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/HttpBody;Ljava/lang/Iterable;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/api/HttpBody;->addAllExtensions(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllExtensions(Ljava/lang/Iterable;)V
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

    .line 277
    invoke-direct {p0}, Lcom/google/api/HttpBody;->ensureExtensionsIsMutable()V

    .line 278
    iget-object v0, p0, Lcom/google/api/HttpBody;->extensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addExtensions(ILcom/google/protobuf/Any;)V
    .locals 1

    .line 263
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    invoke-direct {p0}, Lcom/google/api/HttpBody;->ensureExtensionsIsMutable()V

    .line 265
    iget-object v0, p0, Lcom/google/api/HttpBody;->extensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addExtensions(Lcom/google/protobuf/Any;)V
    .locals 1

    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    invoke-direct {p0}, Lcom/google/api/HttpBody;->ensureExtensionsIsMutable()V

    .line 251
    iget-object v0, p0, Lcom/google/api/HttpBody;->extensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearContentType()V
    .locals 1

    .line 101
    invoke-static {}, Lcom/google/api/HttpBody;->getDefaultInstance()Lcom/google/api/HttpBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/HttpBody;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpBody;->contentType_:Ljava/lang/String;

    return-void
.end method

.method private clearData()V
    .locals 1

    .line 154
    invoke-static {}, Lcom/google/api/HttpBody;->getDefaultInstance()Lcom/google/api/HttpBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/HttpBody;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpBody;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearExtensions()V
    .locals 1

    .line 290
    invoke-static {}, Lcom/google/api/HttpBody;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpBody;->extensions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureExtensionsIsMutable()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/google/api/HttpBody;->extensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/api/HttpBody;->extensions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 222
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpBody;->extensions_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/HttpBody;
    .locals 1

    .line 771
    sget-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 380
    sget-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    invoke-virtual {v0}, Lcom/google/api/HttpBody;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/HttpBody$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/HttpBody;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 383
    sget-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    invoke-virtual {v0, p0}, Lcom/google/api/HttpBody;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpBody$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/HttpBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    sget-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    invoke-static {v0, p0}, Lcom/google/api/HttpBody;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpBody;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    sget-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    invoke-static {v0, p0, p1}, Lcom/google/api/HttpBody;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpBody;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 321
    sget-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpBody;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 328
    sget-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpBody;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/HttpBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    sget-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpBody;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpBody;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/HttpBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    sget-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpBody;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    sget-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpBody;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/HttpBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 308
    sget-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpBody;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 315
    sget-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpBody;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/HttpBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 333
    sget-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpBody;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 340
    sget-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpBody;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/HttpBody;",
            ">;"
        }
    .end annotation

    .line 777
    sget-object v0, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    invoke-virtual {v0}, Lcom/google/api/HttpBody;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeExtensions(I)V
    .locals 1

    .line 301
    invoke-direct {p0}, Lcom/google/api/HttpBody;->ensureExtensionsIsMutable()V

    .line 302
    iget-object v0, p0, Lcom/google/api/HttpBody;->extensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setContentType(Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    iput-object p1, p0, Lcom/google/api/HttpBody;->contentType_:Ljava/lang/String;

    return-void
.end method

.method private setContentTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 113
    invoke-static {p1}, Lcom/google/api/HttpBody;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 114
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpBody;->contentType_:Ljava/lang/String;

    return-void
.end method

.method private setData(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    iput-object p1, p0, Lcom/google/api/HttpBody;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setExtensions(ILcom/google/protobuf/Any;)V
    .locals 1

    .line 236
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    invoke-direct {p0}, Lcom/google/api/HttpBody;->ensureExtensionsIsMutable()V

    .line 238
    iget-object v0, p0, Lcom/google/api/HttpBody;->extensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 710
    sget-object p2, Lcom/google/api/HttpBody$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 755
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 749
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 734
    :pswitch_2
    sget-object p1, Lcom/google/api/HttpBody;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 736
    const-class p2, Lcom/google/api/HttpBody;

    monitor-enter p2

    .line 737
    :try_start_0
    sget-object p1, Lcom/google/api/HttpBody;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 739
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 742
    sput-object p1, Lcom/google/api/HttpBody;->PARSER:Lcom/google/protobuf/Parser;

    .line 744
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

    .line 731
    :pswitch_3
    sget-object p1, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    .line 718
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "contentType_"

    aput-object v0, p1, p3

    const-string p3, "data_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "extensions_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/protobuf/Any;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0208\u0002\n\u0003\u001b"

    .line 727
    sget-object p3, Lcom/google/api/HttpBody;->DEFAULT_INSTANCE:Lcom/google/api/HttpBody;

    invoke-static {p3, p2, p1}, Lcom/google/api/HttpBody;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 715
    :pswitch_5
    new-instance p1, Lcom/google/api/HttpBody$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/HttpBody$Builder;-><init>(Lcom/google/api/HttpBody$1;)V

    return-object p1

    .line 712
    :pswitch_6
    new-instance p1, Lcom/google/api/HttpBody;

    invoke-direct {p1}, Lcom/google/api/HttpBody;-><init>()V

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

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/api/HttpBody;->contentType_:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/api/HttpBody;->contentType_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/api/HttpBody;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getExtensions(I)Lcom/google/protobuf/Any;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/google/api/HttpBody;->extensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    return-object p1
.end method

.method public getExtensionsCount()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/google/api/HttpBody;->extensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getExtensionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/google/api/HttpBody;->extensions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getExtensionsOrBuilder(I)Lcom/google/protobuf/AnyOrBuilder;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/google/api/HttpBody;->extensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/AnyOrBuilder;

    return-object p1
.end method

.method public getExtensionsOrBuilderList()Ljava/util/List;
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

    .line 181
    iget-object v0, p0, Lcom/google/api/HttpBody;->extensions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
