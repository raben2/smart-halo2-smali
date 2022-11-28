.class public final enum Lcom/instabug/library/tracking/ActivityLifeCycleEvent;
.super Ljava/lang/Enum;
.source "ActivityLifeCycleEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/tracking/ActivityLifeCycleEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

.field public static final enum CREATED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

.field public static final enum DESTROYED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

.field public static final enum PAUSED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

.field public static final enum RESUMED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

.field public static final enum STARTED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

.field public static final enum STOPPED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    const-string v1, "CREATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->CREATED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    new-instance v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    const-string v1, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->STARTED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    new-instance v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    const-string v1, "RESUMED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->RESUMED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    new-instance v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    const-string v1, "PAUSED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->PAUSED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    new-instance v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    const-string v1, "STOPPED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->STOPPED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    new-instance v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    const-string v1, "DESTROYED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->DESTROYED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    const/4 v1, 0x6

    .line 2
    new-array v1, v1, [Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    sget-object v8, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->CREATED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    aput-object v8, v1, v2

    sget-object v2, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->STARTED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->RESUMED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->PAUSED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->STOPPED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->$VALUES:[Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/tracking/ActivityLifeCycleEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/tracking/ActivityLifeCycleEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->$VALUES:[Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    invoke-virtual {v0}, [Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    return-object v0
.end method
