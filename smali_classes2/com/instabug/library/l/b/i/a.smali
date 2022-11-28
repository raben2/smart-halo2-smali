.class public enum Lcom/instabug/library/l/b/i/a;
.super Ljava/lang/Enum;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/l/b/i/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/l/b/i/a;

.field public static final enum DISABLED_LOGS:Lcom/instabug/library/l/b/i/a;

.field public static final enum LOGS:Lcom/instabug/library/l/b/i/a;

.field public static final VALUE_UNDEFINED:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/instabug/library/l/b/i/a$a;

    const-string v1, "LOGS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/l/b/i/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/l/b/i/a;->LOGS:Lcom/instabug/library/l/b/i/a;

    .line 28
    new-instance v0, Lcom/instabug/library/l/b/i/a$b;

    const-string v1, "DISABLED_LOGS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/l/b/i/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/l/b/i/a;->DISABLED_LOGS:Lcom/instabug/library/l/b/i/a;

    const/4 v1, 0x2

    .line 29
    new-array v1, v1, [Lcom/instabug/library/l/b/i/a;

    sget-object v4, Lcom/instabug/library/l/b/i/a;->LOGS:Lcom/instabug/library/l/b/i/a;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/instabug/library/l/b/i/a;->$VALUES:[Lcom/instabug/library/l/b/i/a;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/instabug/library/l/b/i/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/l/b/i/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/l/b/i/a;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/l/b/i/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/l/b/i/a;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/l/b/i/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/l/b/i/a;->$VALUES:[Lcom/instabug/library/l/b/i/a;

    invoke-virtual {v0}, [Lcom/instabug/library/l/b/i/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/l/b/i/a;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public b()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
