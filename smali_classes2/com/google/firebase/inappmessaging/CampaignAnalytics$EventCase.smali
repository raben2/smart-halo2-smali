.class public final enum Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;
.super Ljava/lang/Enum;
.source "CampaignAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CampaignAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

.field public static final enum DISMISS_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

.field public static final enum EVENT_NOT_SET:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

.field public static final enum EVENT_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

.field public static final enum FETCH_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

.field public static final enum RENDER_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 29
    new-instance v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    const-string v1, "EVENT_TYPE"

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->EVENT_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    .line 30
    new-instance v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    const-string v1, "DISMISS_TYPE"

    const/4 v4, 0x1

    const/4 v5, 0x6

    invoke-direct {v0, v1, v4, v5}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->DISMISS_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    .line 31
    new-instance v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    const-string v1, "RENDER_ERROR_REASON"

    const/4 v5, 0x2

    const/4 v6, 0x7

    invoke-direct {v0, v1, v5, v6}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->RENDER_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    .line 32
    new-instance v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    const-string v1, "FETCH_ERROR_REASON"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->FETCH_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    .line 33
    new-instance v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    const-string v1, "EVENT_NOT_SET"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v3}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->EVENT_NOT_SET:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    .line 28
    new-array v0, v2, [Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    sget-object v1, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->EVENT_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->DISMISS_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->RENDER_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->FETCH_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->EVENT_NOT_SET:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->$VALUES:[Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 51
    :pswitch_0
    sget-object p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->FETCH_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object p0

    .line 50
    :pswitch_1
    sget-object p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->RENDER_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object p0

    .line 49
    :pswitch_2
    sget-object p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->DISMISS_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object p0

    .line 48
    :pswitch_3
    sget-object p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->EVENT_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object p0

    .line 52
    :cond_0
    sget-object p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->EVENT_NOT_SET:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->forNumber(I)Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;
    .locals 1

    .line 28
    const-class v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->$VALUES:[Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    invoke-virtual {v0}, [Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->value:I

    return v0
.end method
