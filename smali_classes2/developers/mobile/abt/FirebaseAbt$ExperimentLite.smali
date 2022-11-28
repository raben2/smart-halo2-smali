.class public final Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FirebaseAbt.java"

# interfaces
.implements Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldevelopers/mobile/abt/FirebaseAbt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExperimentLite"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;",
        ">;",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLiteOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

.field public static final EXPERIMENT_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private experimentId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 370
    new-instance v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-direct {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;-><init>()V

    .line 373
    sput-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    .line 374
    const-class v1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 55
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->experimentId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .locals 1

    .line 49
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    return-object v0
.end method

.method static synthetic access$100(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->setExperimentId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->clearExperimentId()V

    return-void
.end method

.method static synthetic access$300(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->setExperimentIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearExperimentId()V
    .locals 1

    .line 115
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    move-result-object v0

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->getExperimentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->experimentId_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .locals 1

    .line 379
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    return-object v0
.end method

.method public static newBuilder()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;
    .locals 1

    .line 209
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;

    return-object v0
.end method

.method public static newBuilder(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;
    .locals 1

    .line 212
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-virtual {v0, p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v0, p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v0, p0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 150
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 157
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 137
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 144
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom([B)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 162
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 169
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;",
            ">;"
        }
    .end annotation

    .line 385
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setExperimentId(Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->experimentId_:Ljava/lang/String;

    return-void
.end method

.method private setExperimentIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 129
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 130
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->experimentId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 322
    sget-object p2, Ldevelopers/mobile/abt/FirebaseAbt$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 363
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 357
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 342
    :pswitch_2
    sget-object p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 344
    const-class p2, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    monitor-enter p2

    .line 345
    :try_start_0
    sget-object p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 347
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 350
    sput-object p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->PARSER:Lcom/google/protobuf/Parser;

    .line 352
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

    .line 339
    :pswitch_3
    sget-object p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    return-object p1

    .line 330
    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "experimentId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    .line 335
    sget-object p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {p3, p2, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 327
    :pswitch_5
    new-instance p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;

    invoke-direct {p1, p3}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;-><init>(Ldevelopers/mobile/abt/FirebaseAbt$1;)V

    return-object p1

    .line 324
    :pswitch_6
    new-instance p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-direct {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;-><init>()V

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

.method public getExperimentId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->experimentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getExperimentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 86
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->experimentId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
