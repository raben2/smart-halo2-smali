.class public final enum Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;
.super Ljava/lang/Enum;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CampaignState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState$CampaignStateVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

.field public static final enum DELETED:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

.field public static final DELETED_VALUE:I = 0x4

.field public static final enum DRAFT:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

.field public static final DRAFT_VALUE:I = 0x1

.field public static final enum PUBLISHED:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

.field public static final PUBLISHED_VALUE:I = 0x2

.field public static final enum STOPPED:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

.field public static final STOPPED_VALUE:I = 0x3

.field public static final enum UNKNOWN_CAMPAIGN_STATE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

.field public static final UNKNOWN_CAMPAIGN_STATE_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 150
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    const-string v1, "UNKNOWN_CAMPAIGN_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->UNKNOWN_CAMPAIGN_STATE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    .line 159
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    const-string v1, "DRAFT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->DRAFT:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    .line 169
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    const-string v1, "PUBLISHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->PUBLISHED:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    .line 178
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    const-string v1, "STOPPED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->STOPPED:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    .line 187
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    const-string v1, "DELETED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->DELETED:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    .line 188
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    const-string v1, "UNRECOGNIZED"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v0, v1, v7, v8}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->UNRECOGNIZED:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    const/4 v0, 0x6

    .line 145
    new-array v0, v0, [Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    sget-object v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->UNKNOWN_CAMPAIGN_STATE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->DRAFT:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->PUBLISHED:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->STOPPED:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->DELETED:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->UNRECOGNIZED:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->$VALUES:[Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    .line 269
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState$1;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState$1;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 293
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 294
    iput p3, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 259
    :pswitch_0
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->DELETED:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    return-object p0

    .line 258
    :pswitch_1
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->STOPPED:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    return-object p0

    .line 257
    :pswitch_2
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->PUBLISHED:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    return-object p0

    .line 256
    :pswitch_3
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->DRAFT:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    return-object p0

    .line 255
    :pswitch_4
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->UNKNOWN_CAMPAIGN_STATE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;",
            ">;"
        }
    .end annotation

    .line 266
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 279
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState$CampaignStateVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->forNumber(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;
    .locals 1

    .line 145
    const-class v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;
    .locals 1

    .line 145
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->$VALUES:[Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    invoke-virtual {v0}, [Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 236
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->UNRECOGNIZED:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    if-eq p0, v0, :cond_0

    .line 240
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->value:I

    return v0

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
