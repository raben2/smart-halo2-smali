.class public final Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CampaignProto.java"

# interfaces
.implements Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThickContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;,
        Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$DataBundleDefaultEntryHolder;,
        Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;",
        ">;",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContentOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x3

.field public static final DATA_BUNDLE_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

.field public static final EXPERIMENTAL_PAYLOAD_FIELD_NUMBER:I = 0x2

.field public static final IS_TEST_CAMPAIGN_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_FIELD_NUMBER:I = 0x4

.field public static final TRIGGERING_CONDITIONS_FIELD_NUMBER:I = 0x5

.field public static final VANILLA_PAYLOAD_FIELD_NUMBER:I = 0x1


# instance fields
.field private content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

.field private dataBundle_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isTestCampaign_:Z

.field private payloadCase_:I

.field private payload_:Ljava/lang/Object;

.field private priority_:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

.field private triggeringConditions_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2437
    new-instance v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-direct {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;-><init>()V

    .line 2440
    sput-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 2441
    const-class v1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1100
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1103
    iput v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payloadCase_:I

    .line 1579
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->dataBundle_:Lcom/google/protobuf/MapFieldLite;

    .line 1101
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->triggeringConditions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1600()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .locals 1

    .line 1095
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V
    .locals 0

    .line 1095
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->clearPayload()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)V
    .locals 0

    .line 1095
    invoke-direct {p0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->setVanillaPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)V
    .locals 0

    .line 1095
    invoke-direct {p0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->mergeVanillaPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V
    .locals 0

    .line 1095
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->clearVanillaPayload()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)V
    .locals 0

    .line 1095
    invoke-direct {p0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->setExperimentalPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)V
    .locals 0

    .line 1095
    invoke-direct {p0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->mergeExperimentalPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V
    .locals 0

    .line 1095
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->clearExperimentalPayload()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 0

    .line 1095
    invoke-direct {p0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->setContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 0

    .line 1095
    invoke-direct {p0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->mergeContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V
    .locals 0

    .line 1095
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->clearContent()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V
    .locals 0

    .line 1095
    invoke-direct {p0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->setPriority(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V
    .locals 0

    .line 1095
    invoke-direct {p0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->mergePriority(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V
    .locals 0

    .line 1095
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->clearPriority()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V
    .locals 0

    .line 1095
    invoke-direct {p0, p1, p2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->setTriggeringConditions(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V
    .locals 0

    .line 1095
    invoke-direct {p0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->addTriggeringConditions(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V
    .locals 0

    .line 1095
    invoke-direct {p0, p1, p2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->addTriggeringConditions(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Ljava/lang/Iterable;)V
    .locals 0

    .line 1095
    invoke-direct {p0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->addAllTriggeringConditions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V
    .locals 0

    .line 1095
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->clearTriggeringConditions()V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;I)V
    .locals 0

    .line 1095
    invoke-direct {p0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->removeTriggeringConditions(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Z)V
    .locals 0

    .line 1095
    invoke-direct {p0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->setIsTestCampaign(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V
    .locals 0

    .line 1095
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->clearIsTestCampaign()V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Ljava/util/Map;
    .locals 0

    .line 1095
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getMutableDataBundleMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private addAllTriggeringConditions(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;",
            ">;)V"
        }
    .end annotation

    .line 1499
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->ensureTriggeringConditionsIsMutable()V

    .line 1500
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->triggeringConditions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addTriggeringConditions(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V
    .locals 1

    .line 1486
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1487
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->ensureTriggeringConditionsIsMutable()V

    .line 1488
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->triggeringConditions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTriggeringConditions(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V
    .locals 1

    .line 1473
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1474
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->ensureTriggeringConditionsIsMutable()V

    .line 1475
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->triggeringConditions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearContent()V
    .locals 1

    const/4 v0, 0x0

    .line 1308
    iput-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-void
.end method

.method private clearExperimentalPayload()V
    .locals 2

    .line 1240
    iget v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1241
    iput v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payloadCase_:I

    const/4 v0, 0x0

    .line 1242
    iput-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearIsTestCampaign()V
    .locals 1

    const/4 v0, 0x0

    .line 1563
    iput-boolean v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->isTestCampaign_:Z

    return-void
.end method

.method private clearPayload()V
    .locals 1

    const/4 v0, 0x0

    .line 1142
    iput v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payloadCase_:I

    const/4 v0, 0x0

    .line 1143
    iput-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payload_:Ljava/lang/Object;

    return-void
.end method

.method private clearPriority()V
    .locals 1

    const/4 v0, 0x0

    .line 1384
    iput-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->priority_:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-void
.end method

.method private clearTriggeringConditions()V
    .locals 1

    .line 1511
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->triggeringConditions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearVanillaPayload()V
    .locals 2

    .line 1190
    iget v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1191
    iput v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payloadCase_:I

    const/4 v0, 0x0

    .line 1192
    iput-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ensureTriggeringConditionsIsMutable()V
    .locals 1

    .line 1446
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->triggeringConditions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->triggeringConditions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1448
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->triggeringConditions_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .locals 1

    .line 2446
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    return-object v0
.end method

.method private getMutableDataBundleMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1681
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->internalGetMutableDataBundle()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetDataBundle()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1582
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->dataBundle_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableDataBundle()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1586
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->dataBundle_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->dataBundle_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->dataBundle_:Lcom/google/protobuf/MapFieldLite;

    .line 1589
    :cond_0
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->dataBundle_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private mergeContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 2

    .line 1291
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1292
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    if-eqz v0, :cond_0

    .line 1293
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 1295
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    iput-object p1, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    goto :goto_0

    .line 1297
    :cond_0
    iput-object p1, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    :goto_0
    return-void
.end method

.method private mergeExperimentalPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)V
    .locals 3

    .line 1226
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1227
    iget v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payload_:Ljava/lang/Object;

    .line 1228
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->getDefaultInstance()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->newBuilder(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;

    move-result-object v0

    .line 1230
    invoke-virtual {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;

    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 1232
    :cond_0
    iput-object p1, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payload_:Ljava/lang/Object;

    .line 1234
    :goto_0
    iput v1, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payloadCase_:I

    return-void
.end method

.method private mergePriority(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V
    .locals 2

    .line 1365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1366
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->priority_:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    if-eqz v0, :cond_0

    .line 1367
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->priority_:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    .line 1369
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    iput-object p1, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->priority_:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    goto :goto_0

    .line 1371
    :cond_0
    iput-object p1, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->priority_:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    :goto_0
    return-void
.end method

.method private mergeVanillaPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)V
    .locals 3

    .line 1176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1177
    iget v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payload_:Ljava/lang/Object;

    .line 1178
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->getDefaultInstance()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->newBuilder(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;

    move-result-object v0

    .line 1180
    invoke-virtual {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;

    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 1182
    :cond_0
    iput-object p1, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payload_:Ljava/lang/Object;

    .line 1184
    :goto_0
    iput v1, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payloadCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1759
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1762
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0, p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1736
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1742
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1700
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1707
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1747
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1754
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1724
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1731
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1687
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1694
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1712
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1719
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;",
            ">;"
        }
    .end annotation

    .line 2452
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeTriggeringConditions(I)V
    .locals 1

    .line 1521
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->ensureTriggeringConditionsIsMutable()V

    .line 1522
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->triggeringConditions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 0

    .line 1278
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1279
    iput-object p1, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-void
.end method

.method private setExperimentalPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)V
    .locals 0

    .line 1218
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1219
    iput-object p1, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payload_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 1220
    iput p1, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payloadCase_:I

    return-void
.end method

.method private setIsTestCampaign(Z)V
    .locals 0

    .line 1551
    iput-boolean p1, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->isTestCampaign_:Z

    return-void
.end method

.method private setPriority(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V
    .locals 0

    .line 1350
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1351
    iput-object p1, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->priority_:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    return-void
.end method

.method private setTriggeringConditions(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V
    .locals 1

    .line 1461
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1462
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->ensureTriggeringConditionsIsMutable()V

    .line 1463
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->triggeringConditions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setVanillaPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)V
    .locals 0

    .line 1168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1169
    iput-object p1, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payload_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1170
    iput p1, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payloadCase_:I

    return-void
.end method


# virtual methods
.method public containsDataBundle(Ljava/lang/String;)Z
    .locals 1

    .line 1608
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1609
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->internalGetDataBundle()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2378
    sget-object p2, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2430
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2424
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2409
    :pswitch_2
    sget-object p1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2411
    const-class p2, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    monitor-enter p2

    .line 2412
    :try_start_0
    sget-object p1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2414
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2417
    sput-object p1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->PARSER:Lcom/google/protobuf/Parser;

    .line 2419
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

    .line 2406
    :pswitch_3
    sget-object p1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    .line 2386
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "payload_"

    aput-object v0, p1, p3

    const-string p3, "payloadCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-class p3, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "content_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "priority_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "triggeringConditions_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "isTestCampaign_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "dataBundle_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    sget-object p3, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$DataBundleDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0001\u0000\u0001\u0008\u0007\u0001\u0001\u0000\u0001<\u0000\u0002<\u0000\u0003\t\u0004\t\u0005\u001b\u0007\u0007\u00082"

    .line 2402
    sget-object p3, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->DEFAULT_INSTANCE:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {p3, p2, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2383
    :pswitch_5
    new-instance p1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;

    invoke-direct {p1, p3}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;-><init>(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$1;)V

    return-object p1

    .line 2380
    :pswitch_6
    new-instance p1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-direct {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;-><init>()V

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

.method public getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDataBundle()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1617
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getDataBundleMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDataBundleCount()I
    .locals 1

    .line 1594
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->internalGetDataBundle()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getDataBundleMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1631
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->internalGetDataBundle()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 1630
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDataBundleOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1646
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1648
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->internalGetDataBundle()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 1649
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2
.end method

.method public getDataBundleOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1663
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1665
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->internalGetDataBundle()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 1666
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1669
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1667
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getExperimentalPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;
    .locals 2

    .line 1209
    iget v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    return-object v0

    .line 1212
    :cond_0
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->getDefaultInstance()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    move-result-object v0

    return-object v0
.end method

.method public getIsTestCampaign()Z
    .locals 1

    .line 1538
    iget-boolean v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->isTestCampaign_:Z

    return v0
.end method

.method public getPayloadCase()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;
    .locals 1

    .line 1137
    iget v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payloadCase_:I

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;->forNumber(I)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->priority_:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTriggeringConditions(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    .line 1432
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->triggeringConditions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p1
.end method

.method public getTriggeringConditionsCount()I
    .locals 1

    .line 1421
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->triggeringConditions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getTriggeringConditionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;",
            ">;"
        }
    .end annotation

    .line 1399
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->triggeringConditions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTriggeringConditionsOrBuilder(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringConditionOrBuilder;
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->triggeringConditions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringConditionOrBuilder;

    return-object p1
.end method

.method public getTriggeringConditionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringConditionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1410
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->triggeringConditions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getVanillaPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;
    .locals 2

    .line 1159
    iget v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    return-object v0

    .line 1162
    :cond_0
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->getDefaultInstance()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    move-result-object v0

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .line 1257
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExperimentalPayload()Z
    .locals 2

    .line 1202
    iget v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .line 1325
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->priority_:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVanillaPayload()Z
    .locals 2

    .line 1152
    iget v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
