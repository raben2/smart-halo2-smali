.class public final enum Lcom/instabug/library/Feature$State;
.super Ljava/lang/Enum;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/Feature$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/Feature$State;

.field public static final enum DISABLED:Lcom/instabug/library/Feature$State;

.field public static final enum ENABLED:Lcom/instabug/library/Feature$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/instabug/library/Feature$State;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/Feature$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    .line 8
    new-instance v0, Lcom/instabug/library/Feature$State;

    const-string v1, "DISABLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/Feature$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    const/4 v1, 0x2

    .line 9
    new-array v1, v1, [Lcom/instabug/library/Feature$State;

    sget-object v4, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/instabug/library/Feature$State;->$VALUES:[Lcom/instabug/library/Feature$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/Feature$State;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/Feature$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/Feature$State;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/Feature$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/Feature$State;->$VALUES:[Lcom/instabug/library/Feature$State;

    invoke-virtual {v0}, [Lcom/instabug/library/Feature$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/Feature$State;

    return-object v0
.end method
