.class public final Lcom/google/api/ContextRule;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContextRule.java"

# interfaces
.implements Lcom/google/api/ContextRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/ContextRule$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/ContextRule;",
        "Lcom/google/api/ContextRule$Builder;",
        ">;",
        "Lcom/google/api/ContextRuleOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALLOWED_REQUEST_EXTENSIONS_FIELD_NUMBER:I = 0x4

.field public static final ALLOWED_RESPONSE_EXTENSIONS_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/ContextRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVIDED_FIELD_NUMBER:I = 0x3

.field public static final REQUESTED_FIELD_NUMBER:I = 0x2

.field public static final SELECTOR_FIELD_NUMBER:I = 0x1


# instance fields
.field private allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provided_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requested_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selector_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1392
    new-instance v0, Lcom/google/api/ContextRule;

    invoke-direct {v0}, Lcom/google/api/ContextRule;-><init>()V

    .line 1395
    sput-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    .line 1396
    const-class v1, Lcom/google/api/ContextRule;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/google/api/ContextRule;->selector_:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 22
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 23
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 24
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/ContextRule;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/ContextRule;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->setSelector(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/ContextRule;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addProvided(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/ContextRule;Ljava/lang/Iterable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addAllProvided(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/ContextRule;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/api/ContextRule;->clearProvided()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addProvidedBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/ContextRule;ILjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/api/ContextRule;->setAllowedRequestExtensions(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/ContextRule;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addAllowedRequestExtensions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/api/ContextRule;Ljava/lang/Iterable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addAllAllowedRequestExtensions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/api/ContextRule;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/api/ContextRule;->clearAllowedRequestExtensions()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addAllowedRequestExtensionsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/api/ContextRule;ILjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/api/ContextRule;->setAllowedResponseExtensions(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/ContextRule;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/api/ContextRule;->clearSelector()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/api/ContextRule;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addAllowedResponseExtensions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/api/ContextRule;Ljava/lang/Iterable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addAllAllowedResponseExtensions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/api/ContextRule;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/api/ContextRule;->clearAllowedResponseExtensions()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addAllowedResponseExtensionsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->setSelectorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/ContextRule;ILjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/api/ContextRule;->setRequested(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/ContextRule;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addRequested(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/ContextRule;Ljava/lang/Iterable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addAllRequested(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/ContextRule;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/api/ContextRule;->clearRequested()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addRequestedBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/ContextRule;ILjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/api/ContextRule;->setProvided(ILjava/lang/String;)V

    return-void
.end method

.method private addAllAllowedRequestExtensions(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 460
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureAllowedRequestExtensionsIsMutable()V

    .line 461
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllAllowedResponseExtensions(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 597
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureAllowedResponseExtensionsIsMutable()V

    .line 598
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllProvided(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 325
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureProvidedIsMutable()V

    .line 326
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllRequested(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureRequestedIsMutable()V

    .line 198
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllowedRequestExtensions(Ljava/lang/String;)V
    .locals 1

    .line 445
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureAllowedRequestExtensionsIsMutable()V

    .line 447
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllowedRequestExtensionsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 486
    invoke-static {p1}, Lcom/google/api/ContextRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 487
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureAllowedRequestExtensionsIsMutable()V

    .line 488
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllowedResponseExtensions(Ljava/lang/String;)V
    .locals 1

    .line 582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 583
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureAllowedResponseExtensionsIsMutable()V

    .line 584
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllowedResponseExtensionsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 623
    invoke-static {p1}, Lcom/google/api/ContextRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 624
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureAllowedResponseExtensionsIsMutable()V

    .line 625
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addProvided(Ljava/lang/String;)V
    .locals 1

    .line 311
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureProvidedIsMutable()V

    .line 313
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addProvidedBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 349
    invoke-static {p1}, Lcom/google/api/ContextRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 350
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureProvidedIsMutable()V

    .line 351
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addRequested(Ljava/lang/String;)V
    .locals 1

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureRequestedIsMutable()V

    .line 185
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addRequestedBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 221
    invoke-static {p1}, Lcom/google/api/ContextRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 222
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureRequestedIsMutable()V

    .line 223
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAllowedRequestExtensions()V
    .locals 1

    .line 473
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearAllowedResponseExtensions()V
    .locals 1

    .line 610
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearProvided()V
    .locals 1

    .line 337
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearRequested()V
    .locals 1

    .line 209
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSelector()V
    .locals 1

    .line 80
    invoke-static {}, Lcom/google/api/ContextRule;->getDefaultInstance()Lcom/google/api/ContextRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->selector_:Ljava/lang/String;

    return-void
.end method

.method private ensureAllowedRequestExtensionsIsMutable()V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 415
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureAllowedResponseExtensionsIsMutable()V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 552
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureProvidedIsMutable()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 283
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureRequestedIsMutable()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 155
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/ContextRule;
    .locals 1

    .line 1401
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 703
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/ContextRule$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/ContextRule;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 706
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-virtual {v0, p0}, Lcom/google/api/ContextRule;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0}, Lcom/google/api/ContextRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0, p1}, Lcom/google/api/ContextRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 644
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 651
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 668
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 631
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 638
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 656
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 663
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/ContextRule;",
            ">;"
        }
    .end annotation

    .line 1407
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAllowedRequestExtensions(ILjava/lang/String;)V
    .locals 1

    .line 430
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureAllowedRequestExtensionsIsMutable()V

    .line 432
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setAllowedResponseExtensions(ILjava/lang/String;)V
    .locals 1

    .line 567
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureAllowedResponseExtensionsIsMutable()V

    .line 569
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setProvided(ILjava/lang/String;)V
    .locals 1

    .line 297
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureProvidedIsMutable()V

    .line 299
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRequested(ILjava/lang/String;)V
    .locals 1

    .line 169
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureRequestedIsMutable()V

    .line 171
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSelector(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    iput-object p1, p0, Lcom/google/api/ContextRule;->selector_:Ljava/lang/String;

    return-void
.end method

.method private setSelectorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 93
    invoke-static {p1}, Lcom/google/api/ContextRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 94
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/ContextRule;->selector_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1339
    sget-object p2, Lcom/google/api/ContextRule$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1385
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1379
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1364
    :pswitch_2
    sget-object p1, Lcom/google/api/ContextRule;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1366
    const-class p2, Lcom/google/api/ContextRule;

    monitor-enter p2

    .line 1367
    :try_start_0
    sget-object p1, Lcom/google/api/ContextRule;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1369
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1372
    sput-object p1, Lcom/google/api/ContextRule;->PARSER:Lcom/google/protobuf/Parser;

    .line 1374
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

    .line 1361
    :pswitch_3
    sget-object p1, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    .line 1347
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "selector_"

    aput-object v0, p1, p3

    const-string p3, "requested_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "provided_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "allowedRequestExtensions_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "allowedResponseExtensions_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0004\u0000\u0001\u0208\u0002\u021a\u0003\u021a\u0004\u021a\u0005\u021a"

    .line 1357
    sget-object p3, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {p3, p2, p1}, Lcom/google/api/ContextRule;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1344
    :pswitch_5
    new-instance p1, Lcom/google/api/ContextRule$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/ContextRule$Builder;-><init>(Lcom/google/api/ContextRule$1;)V

    return-object p1

    .line 1341
    :pswitch_6
    new-instance p1, Lcom/google/api/ContextRule;

    invoke-direct {p1}, Lcom/google/api/ContextRule;-><init>()V

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

.method public getAllowedRequestExtensions(I)Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAllowedRequestExtensionsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 410
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 409
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAllowedRequestExtensionsCount()I
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getAllowedRequestExtensionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAllowedResponseExtensions(I)Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAllowedResponseExtensionsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 547
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 546
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAllowedResponseExtensionsCount()I
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getAllowedResponseExtensionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getProvided(I)Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getProvidedBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 278
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 277
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getProvidedCount()I
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getProvidedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRequested(I)Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRequestedBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 150
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 149
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getRequestedCount()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getRequestedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/api/ContextRule;->selector_:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/api/ContextRule;->selector_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
