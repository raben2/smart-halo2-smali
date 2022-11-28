.class public final Lcom/google/firebase/inappmessaging/ClientAppInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClientAppInfo.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/ClientAppInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/ClientAppInfo;",
        "Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/ClientAppInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

.field public static final FIREBASE_INSTANCE_ID_FIELD_NUMBER:I = 0x2

.field public static final GOOGLE_APP_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/ClientAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private firebaseInstanceId_:Ljava/lang/String;

.field private googleAppId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 546
    new-instance v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;-><init>()V

    .line 549
    sput-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    .line 550
    const-class v1, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->googleAppId_:Ljava/lang/String;

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->firebaseInstanceId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/inappmessaging/ClientAppInfo;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->setGoogleAppId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/inappmessaging/ClientAppInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->clearGoogleAppId()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/inappmessaging/ClientAppInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->setGoogleAppIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/inappmessaging/ClientAppInfo;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->setFirebaseInstanceId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firebase/inappmessaging/ClientAppInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->clearFirebaseInstanceId()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/inappmessaging/ClientAppInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->setFirebaseInstanceIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearFirebaseInstanceId()V
    .locals 1

    .line 185
    iget v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    .line 186
    invoke-static {}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->firebaseInstanceId_:Ljava/lang/String;

    return-void
.end method

.method private clearGoogleAppId()V
    .locals 1

    .line 99
    iget v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    .line 100
    invoke-static {}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->getGoogleAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->googleAppId_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1

    .line 555
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;
    .locals 1

    .line 278
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/ClientAppInfo;)Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;
    .locals 1

    .line 281
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 231
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/ClientAppInfo;",
            ">;"
        }
    .end annotation

    .line 561
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFirebaseInstanceId(Ljava/lang/String;)V
    .locals 1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    iget v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    .line 174
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->firebaseInstanceId_:Ljava/lang/String;

    return-void
.end method

.method private setFirebaseInstanceIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 199
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->firebaseInstanceId_:Ljava/lang/String;

    .line 200
    iget p1, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    return-void
.end method

.method private setGoogleAppId(Ljava/lang/String;)V
    .locals 1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    iget v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    .line 86
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->googleAppId_:Ljava/lang/String;

    return-void
.end method

.method private setGoogleAppIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 115
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->googleAppId_:Ljava/lang/String;

    .line 116
    iget p1, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 495
    sget-object p2, Lcom/google/firebase/inappmessaging/ClientAppInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 539
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 533
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 518
    :pswitch_2
    sget-object p1, Lcom/google/firebase/inappmessaging/ClientAppInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 520
    const-class p2, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    monitor-enter p2

    .line 521
    :try_start_0
    sget-object p1, Lcom/google/firebase/inappmessaging/ClientAppInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 523
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 526
    sput-object p1, Lcom/google/firebase/inappmessaging/ClientAppInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 528
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

    .line 515
    :pswitch_3
    sget-object p1, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    .line 503
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "googleAppId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "firebaseInstanceId_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0008\u0001"

    .line 511
    sget-object p3, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {p3, p2, p1}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 500
    :pswitch_5
    new-instance p1, Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;

    invoke-direct {p1, p3}, Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;-><init>(Lcom/google/firebase/inappmessaging/ClientAppInfo$1;)V

    return-object p1

    .line 497
    :pswitch_6
    new-instance p1, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-direct {p1}, Lcom/google/firebase/inappmessaging/ClientAppInfo;-><init>()V

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

.method public getFirebaseInstanceId()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->firebaseInstanceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getFirebaseInstanceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->firebaseInstanceId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleAppId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->googleAppId_:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->googleAppId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasFirebaseInstanceId()Z
    .locals 1

    .line 132
    iget v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGoogleAppId()Z
    .locals 2

    .line 38
    iget v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
