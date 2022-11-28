.class public final Lcom/google/api/ProjectProperties;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ProjectProperties.java"

# interfaces
.implements Lcom/google/api/ProjectPropertiesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/ProjectProperties$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/ProjectProperties;",
        "Lcom/google/api/ProjectProperties$Builder;",
        ">;",
        "Lcom/google/api/ProjectPropertiesOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/ProjectProperties;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTIES_FIELD_NUMBER:I = 0x1


# instance fields
.field private properties_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 489
    new-instance v0, Lcom/google/api/ProjectProperties;

    invoke-direct {v0}, Lcom/google/api/ProjectProperties;-><init>()V

    .line 492
    sput-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    .line 493
    const-class v1, Lcom/google/api/ProjectProperties;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 32
    invoke-static {}, Lcom/google/api/ProjectProperties;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ProjectProperties;->properties_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/ProjectProperties;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/ProjectProperties;ILcom/google/api/Property;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/api/ProjectProperties;->setProperties(ILcom/google/api/Property;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/ProjectProperties;Lcom/google/api/Property;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/api/ProjectProperties;->addProperties(Lcom/google/api/Property;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/ProjectProperties;ILcom/google/api/Property;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/api/ProjectProperties;->addProperties(ILcom/google/api/Property;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/ProjectProperties;Ljava/lang/Iterable;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/api/ProjectProperties;->addAllProperties(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/ProjectProperties;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/api/ProjectProperties;->clearProperties()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/ProjectProperties;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/api/ProjectProperties;->removeProperties(I)V

    return-void
.end method

.method private addAllProperties(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Property;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/google/api/ProjectProperties;->ensurePropertiesIsMutable()V

    .line 146
    iget-object v0, p0, Lcom/google/api/ProjectProperties;->properties_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addProperties(ILcom/google/api/Property;)V
    .locals 1

    .line 132
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    invoke-direct {p0}, Lcom/google/api/ProjectProperties;->ensurePropertiesIsMutable()V

    .line 134
    iget-object v0, p0, Lcom/google/api/ProjectProperties;->properties_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addProperties(Lcom/google/api/Property;)V
    .locals 1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    invoke-direct {p0}, Lcom/google/api/ProjectProperties;->ensurePropertiesIsMutable()V

    .line 121
    iget-object v0, p0, Lcom/google/api/ProjectProperties;->properties_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearProperties()V
    .locals 1

    .line 157
    invoke-static {}, Lcom/google/api/ProjectProperties;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ProjectProperties;->properties_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensurePropertiesIsMutable()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/api/ProjectProperties;->properties_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/api/ProjectProperties;->properties_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 94
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ProjectProperties;->properties_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/ProjectProperties;
    .locals 1

    .line 498
    sget-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 246
    sget-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    invoke-virtual {v0}, Lcom/google/api/ProjectProperties;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/ProjectProperties$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/ProjectProperties;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 249
    sget-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    invoke-virtual {v0, p0}, Lcom/google/api/ProjectProperties;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/ProjectProperties$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/ProjectProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    invoke-static {v0, p0}, Lcom/google/api/ProjectProperties;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ProjectProperties;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ProjectProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    invoke-static {v0, p0, p1}, Lcom/google/api/ProjectProperties;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ProjectProperties;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/ProjectProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ProjectProperties;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ProjectProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ProjectProperties;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/ProjectProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ProjectProperties;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ProjectProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    sget-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ProjectProperties;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/ProjectProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    sget-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ProjectProperties;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ProjectProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    sget-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ProjectProperties;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/ProjectProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 174
    sget-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ProjectProperties;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ProjectProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ProjectProperties;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/ProjectProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ProjectProperties;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ProjectProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ProjectProperties;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/ProjectProperties;",
            ">;"
        }
    .end annotation

    .line 504
    sget-object v0, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    invoke-virtual {v0}, Lcom/google/api/ProjectProperties;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeProperties(I)V
    .locals 1

    .line 167
    invoke-direct {p0}, Lcom/google/api/ProjectProperties;->ensurePropertiesIsMutable()V

    .line 168
    iget-object v0, p0, Lcom/google/api/ProjectProperties;->properties_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setProperties(ILcom/google/api/Property;)V
    .locals 1

    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    invoke-direct {p0}, Lcom/google/api/ProjectProperties;->ensurePropertiesIsMutable()V

    .line 109
    iget-object v0, p0, Lcom/google/api/ProjectProperties;->properties_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 440
    sget-object p2, Lcom/google/api/ProjectProperties$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 482
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 476
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 461
    :pswitch_2
    sget-object p1, Lcom/google/api/ProjectProperties;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 463
    const-class p2, Lcom/google/api/ProjectProperties;

    monitor-enter p2

    .line 464
    :try_start_0
    sget-object p1, Lcom/google/api/ProjectProperties;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 466
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 469
    sput-object p1, Lcom/google/api/ProjectProperties;->PARSER:Lcom/google/protobuf/Parser;

    .line 471
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

    .line 458
    :pswitch_3
    sget-object p1, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    .line 448
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "properties_"

    aput-object v0, p1, p3

    const-class p3, Lcom/google/api/Property;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 454
    sget-object p3, Lcom/google/api/ProjectProperties;->DEFAULT_INSTANCE:Lcom/google/api/ProjectProperties;

    invoke-static {p3, p2, p1}, Lcom/google/api/ProjectProperties;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 445
    :pswitch_5
    new-instance p1, Lcom/google/api/ProjectProperties$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/ProjectProperties$Builder;-><init>(Lcom/google/api/ProjectProperties$1;)V

    return-object p1

    .line 442
    :pswitch_6
    new-instance p1, Lcom/google/api/ProjectProperties;

    invoke-direct {p1}, Lcom/google/api/ProjectProperties;-><init>()V

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

.method public getProperties(I)Lcom/google/api/Property;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/api/ProjectProperties;->properties_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Property;

    return-object p1
.end method

.method public getPropertiesCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/api/ProjectProperties;->properties_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getPropertiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Property;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/api/ProjectProperties;->properties_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPropertiesOrBuilder(I)Lcom/google/api/PropertyOrBuilder;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/api/ProjectProperties;->properties_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/PropertyOrBuilder;

    return-object p1
.end method

.method public getPropertiesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/PropertyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/api/ProjectProperties;->properties_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
