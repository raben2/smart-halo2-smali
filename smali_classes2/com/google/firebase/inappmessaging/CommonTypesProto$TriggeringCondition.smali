.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringConditionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TriggeringCondition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;,
        Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringConditionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

.field public static final EVENT_FIELD_NUMBER:I = 0x2

.field public static final FIAM_TRIGGER_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private conditionCase_:I

.field private condition_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1599
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;-><init>()V

    .line 1602
    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    .line 1603
    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1190
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1192
    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    return-void
.end method

.method static synthetic access$1100()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    .line 1185
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V
    .locals 0

    .line 1185
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->clearCondition()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;I)V
    .locals 0

    .line 1185
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->setFiamTriggerValue(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;)V
    .locals 0

    .line 1185
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->setFiamTrigger(Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V
    .locals 0

    .line 1185
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->clearFiamTrigger()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 0

    .line 1185
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->setEvent(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 0

    .line 1185
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->mergeEvent(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V
    .locals 0

    .line 1185
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->clearEvent()V

    return-void
.end method

.method private clearCondition()V
    .locals 1

    const/4 v0, 0x0

    .line 1231
    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v0, 0x0

    .line 1232
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    return-void
.end method

.method private clearEvent()V
    .locals 2

    .line 1329
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1330
    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v0, 0x0

    .line 1331
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearFiamTrigger()V
    .locals 2

    .line 1279
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1280
    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v0, 0x0

    .line 1281
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    .line 1608
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object v0
.end method

.method private mergeEvent(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 3

    .line 1315
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1316
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    .line 1317
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;

    move-result-object v0

    .line 1319
    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    goto :goto_0

    .line 1321
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    .line 1323
    :goto_0
    iput v1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;
    .locals 1

    .line 1410
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;
    .locals 1

    .line 1413
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1387
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1393
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1351
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1358
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1398
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1405
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1375
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1382
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1338
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1345
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1363
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1370
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;",
            ">;"
        }
    .end annotation

    .line 1614
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEvent(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 0

    .line 1307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1308
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 1309
    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    return-void
.end method

.method private setFiamTrigger(Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;)V
    .locals 0

    .line 1272
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1273
    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    return-void
.end method

.method private setFiamTriggerValue(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1264
    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    .line 1265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1548
    sget-object p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1592
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1586
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1571
    :pswitch_2
    sget-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1573
    const-class p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    monitor-enter p2

    .line 1574
    :try_start_0
    sget-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1576
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1579
    sput-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->PARSER:Lcom/google/protobuf/Parser;

    .line 1581
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

    .line 1568
    :pswitch_3
    sget-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    .line 1556
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "condition_"

    aput-object v0, p1, p3

    const-string p3, "conditionCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-class p3, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001?\u0000\u0002<\u0000"

    .line 1564
    sget-object p3, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {p3, p2, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1553
    :pswitch_5
    new-instance p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;

    invoke-direct {p1, p3}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;-><init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V

    return-object p1

    .line 1550
    :pswitch_6
    new-instance p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-direct {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;-><init>()V

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

.method public getConditionCase()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;
    .locals 1

    .line 1226
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;->forNumber(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    move-result-object v0

    return-object v0
.end method

.method public getEvent()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 2

    .line 1298
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0

    .line 1301
    :cond_0
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    move-result-object v0

    return-object v0
.end method

.method public getFiamTrigger()Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;
    .locals 2

    .line 1253
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;->forNumber(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1255
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;->UNRECOGNIZED:Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;

    :cond_0
    return-object v0

    .line 1257
    :cond_1
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;->UNKNOWN_TRIGGER:Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;

    return-object v0
.end method

.method public getFiamTriggerValue()I
    .locals 2

    .line 1242
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasEvent()Z
    .locals 2

    .line 1291
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
