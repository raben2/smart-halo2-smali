.class public final Lcom/google/api/Authentication;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Authentication.java"

# interfaces
.implements Lcom/google/api/AuthenticationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Authentication$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Authentication;",
        "Lcom/google/api/Authentication$Builder;",
        ">;",
        "Lcom/google/api/AuthenticationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/Authentication;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Authentication;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVIDERS_FIELD_NUMBER:I = 0x4

.field public static final RULES_FIELD_NUMBER:I = 0x3


# instance fields
.field private providers_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/AuthProvider;",
            ">;"
        }
    .end annotation
.end field

.field private rules_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/AuthenticationRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 799
    new-instance v0, Lcom/google/api/Authentication;

    invoke-direct {v0}, Lcom/google/api/Authentication;-><init>()V

    .line 802
    sput-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    .line 803
    const-class v1, Lcom/google/api/Authentication;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/api/Authentication;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 31
    invoke-static {}, Lcom/google/api/Authentication;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/Authentication;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/Authentication;ILcom/google/api/AuthenticationRule;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/api/Authentication;->setRules(ILcom/google/api/AuthenticationRule;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/Authentication;Ljava/lang/Iterable;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/api/Authentication;->addAllProviders(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/Authentication;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/api/Authentication;->clearProviders()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/Authentication;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/api/Authentication;->removeProviders(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/Authentication;Lcom/google/api/AuthenticationRule;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/api/Authentication;->addRules(Lcom/google/api/AuthenticationRule;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/Authentication;ILcom/google/api/AuthenticationRule;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/api/Authentication;->addRules(ILcom/google/api/AuthenticationRule;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/Authentication;Ljava/lang/Iterable;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/api/Authentication;->addAllRules(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/Authentication;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/api/Authentication;->clearRules()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/Authentication;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/api/Authentication;->removeRules(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/Authentication;ILcom/google/api/AuthProvider;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/api/Authentication;->setProviders(ILcom/google/api/AuthProvider;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/Authentication;Lcom/google/api/AuthProvider;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/api/Authentication;->addProviders(Lcom/google/api/AuthProvider;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/Authentication;ILcom/google/api/AuthProvider;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/api/Authentication;->addProviders(ILcom/google/api/AuthProvider;)V

    return-void
.end method

.method private addAllProviders(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/AuthProvider;",
            ">;)V"
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureProvidersIsMutable()V

    .line 293
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllRules(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/AuthenticationRule;",
            ">;)V"
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureRulesIsMutable()V

    .line 154
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addProviders(ILcom/google/api/AuthProvider;)V
    .locals 1

    .line 279
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureProvidersIsMutable()V

    .line 281
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addProviders(Lcom/google/api/AuthProvider;)V
    .locals 1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureProvidersIsMutable()V

    .line 268
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addRules(ILcom/google/api/AuthenticationRule;)V
    .locals 1

    .line 139
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureRulesIsMutable()V

    .line 141
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addRules(Lcom/google/api/AuthenticationRule;)V
    .locals 1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureRulesIsMutable()V

    .line 127
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearProviders()V
    .locals 1

    .line 304
    invoke-static {}, Lcom/google/api/Authentication;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearRules()V
    .locals 1

    .line 166
    invoke-static {}, Lcom/google/api/Authentication;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureProvidersIsMutable()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 241
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureRulesIsMutable()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 98
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Authentication;
    .locals 1

    .line 808
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 393
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-virtual {v0}, Lcom/google/api/Authentication;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Authentication$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Authentication;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 396
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-virtual {v0, p0}, Lcom/google/api/Authentication;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/Authentication$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Authentication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0}, Lcom/google/api/Authentication;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Authentication;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Authentication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0, p1}, Lcom/google/api/Authentication;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Authentication;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Authentication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 334
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Authentication;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Authentication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 341
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Authentication;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Authentication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Authentication;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Authentication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Authentication;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Authentication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Authentication;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Authentication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Authentication;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Authentication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 321
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Authentication;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Authentication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 328
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Authentication;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/Authentication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 346
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Authentication;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Authentication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 353
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Authentication;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Authentication;",
            ">;"
        }
    .end annotation

    .line 814
    sget-object v0, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-virtual {v0}, Lcom/google/api/Authentication;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeProviders(I)V
    .locals 1

    .line 314
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureProvidersIsMutable()V

    .line 315
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeRules(I)V
    .locals 1

    .line 177
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureRulesIsMutable()V

    .line 178
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setProviders(ILcom/google/api/AuthProvider;)V
    .locals 1

    .line 254
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureProvidersIsMutable()V

    .line 256
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRules(ILcom/google/api/AuthenticationRule;)V
    .locals 1

    .line 112
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    invoke-direct {p0}, Lcom/google/api/Authentication;->ensureRulesIsMutable()V

    .line 114
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 747
    sget-object p2, Lcom/google/api/Authentication$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 792
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 786
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 771
    :pswitch_2
    sget-object p1, Lcom/google/api/Authentication;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 773
    const-class p2, Lcom/google/api/Authentication;

    monitor-enter p2

    .line 774
    :try_start_0
    sget-object p1, Lcom/google/api/Authentication;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 776
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 779
    sput-object p1, Lcom/google/api/Authentication;->PARSER:Lcom/google/protobuf/Parser;

    .line 781
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

    .line 768
    :pswitch_3
    sget-object p1, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    .line 755
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "rules_"

    aput-object v0, p1, p3

    const-class p3, Lcom/google/api/AuthenticationRule;

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "providers_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/api/AuthProvider;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0003\u0004\u0002\u0000\u0002\u0000\u0003\u001b\u0004\u001b"

    .line 764
    sget-object p3, Lcom/google/api/Authentication;->DEFAULT_INSTANCE:Lcom/google/api/Authentication;

    invoke-static {p3, p2, p1}, Lcom/google/api/Authentication;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 752
    :pswitch_5
    new-instance p1, Lcom/google/api/Authentication$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/Authentication$Builder;-><init>(Lcom/google/api/Authentication$1;)V

    return-object p1

    .line 749
    :pswitch_6
    new-instance p1, Lcom/google/api/Authentication;

    invoke-direct {p1}, Lcom/google/api/Authentication;-><init>()V

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

.method public getProviders(I)Lcom/google/api/AuthProvider;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/AuthProvider;

    return-object p1
.end method

.method public getProvidersCount()I
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getProvidersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/AuthProvider;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getProvidersOrBuilder(I)Lcom/google/api/AuthProviderOrBuilder;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/AuthProviderOrBuilder;

    return-object p1
.end method

.method public getProvidersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/AuthProviderOrBuilder;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/google/api/Authentication;->providers_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRules(I)Lcom/google/api/AuthenticationRule;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/AuthenticationRule;

    return-object p1
.end method

.method public getRulesCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/AuthenticationRule;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRulesOrBuilder(I)Lcom/google/api/AuthenticationRuleOrBuilder;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/AuthenticationRuleOrBuilder;

    return-object p1
.end method

.method public getRulesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/AuthenticationRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/api/Authentication;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
