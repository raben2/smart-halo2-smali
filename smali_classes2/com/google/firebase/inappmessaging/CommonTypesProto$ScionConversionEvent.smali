.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScionConversionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEventOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3831
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;-><init>()V

    .line 3834
    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    .line 3835
    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3538
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 3539
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5500()Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1

    .line 3533
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;Ljava/lang/String;)V
    .locals 0

    .line 3533
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;)V
    .locals 0

    .line 3533
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->clearName()V

    return-void
.end method

.method static synthetic access$5800(Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3533
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 3591
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->name_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1

    .line 3840
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;
    .locals 1

    .line 3683
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;
    .locals 1

    .line 3686
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3660
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3666
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3624
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3631
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3671
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3678
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3648
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3655
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3611
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3618
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3636
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3643
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;",
            ">;"
        }
    .end annotation

    .line 3846
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 3578
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3580
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3603
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3604
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->name_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3783
    sget-object p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3824
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3818
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3803
    :pswitch_2
    sget-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3805
    const-class p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    monitor-enter p2

    .line 3806
    :try_start_0
    sget-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3808
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3811
    sput-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 3813
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

    .line 3800
    :pswitch_3
    sget-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object p1

    .line 3791
    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "name_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    .line 3796
    sget-object p3, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {p3, p2, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3788
    :pswitch_5
    new-instance p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;

    invoke-direct {p1, p3}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;-><init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V

    return-object p1

    .line 3785
    :pswitch_6
    new-instance p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-direct {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;-><init>()V

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

.method public getName()Ljava/lang/String;
    .locals 1

    .line 3553
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3566
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
