.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$PriorityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$PriorityOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private value_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3483
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;-><init>()V

    .line 3486
    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    .line 3487
    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3248
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$5100()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1

    .line 3243
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;I)V
    .locals 0

    .line 3243
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->setValue(I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V
    .locals 0

    .line 3243
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->clearValue()V

    return-void
.end method

.method private clearValue()V
    .locals 1

    const/4 v0, 0x0

    .line 3285
    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->value_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1

    .line 3492
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;
    .locals 1

    .line 3363
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;
    .locals 1

    .line 3366
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3340
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3346
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3304
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3311
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3351
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3358
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3328
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3335
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3291
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3298
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3316
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3323
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;",
            ">;"
        }
    .end annotation

    .line 3498
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setValue(I)V
    .locals 0

    .line 3274
    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->value_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3435
    sget-object p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3476
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3470
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3455
    :pswitch_2
    sget-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3457
    const-class p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    monitor-enter p2

    .line 3458
    :try_start_0
    sget-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3460
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3463
    sput-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->PARSER:Lcom/google/protobuf/Parser;

    .line 3465
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

    .line 3452
    :pswitch_3
    sget-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-object p1

    .line 3443
    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "value_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0004"

    .line 3448
    sget-object p3, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {p3, p2, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3440
    :pswitch_5
    new-instance p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;

    invoke-direct {p1, p3}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;-><init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V

    return-object p1

    .line 3437
    :pswitch_6
    new-instance p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-direct {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;-><init>()V

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

.method public getValue()I
    .locals 1

    .line 3262
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->value_:I

    return v0
.end method
