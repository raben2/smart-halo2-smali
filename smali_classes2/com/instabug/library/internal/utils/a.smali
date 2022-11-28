.class public abstract enum Lcom/instabug/library/internal/utils/a;
.super Ljava/lang/Enum;
.source "PlaceHolderDeprecationLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/internal/utils/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/internal/utils/a;

.field public static final enum CUSTOM_DEPRECATION_MESSAGE:Lcom/instabug/library/internal/utils/a;

.field public static final enum CUSTOM_SURVEY_THANK_YOU:Lcom/instabug/library/internal/utils/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/instabug/library/internal/utils/a$a;

    const-string v1, "CUSTOM_SURVEY_THANK_YOU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/internal/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/internal/utils/a;->CUSTOM_SURVEY_THANK_YOU:Lcom/instabug/library/internal/utils/a;

    .line 11
    new-instance v0, Lcom/instabug/library/internal/utils/a$b;

    const-string v1, "CUSTOM_DEPRECATION_MESSAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/internal/utils/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/internal/utils/a;->CUSTOM_DEPRECATION_MESSAGE:Lcom/instabug/library/internal/utils/a;

    const/4 v1, 0x2

    .line 12
    new-array v1, v1, [Lcom/instabug/library/internal/utils/a;

    sget-object v4, Lcom/instabug/library/internal/utils/a;->CUSTOM_SURVEY_THANK_YOU:Lcom/instabug/library/internal/utils/a;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/instabug/library/internal/utils/a;->$VALUES:[Lcom/instabug/library/internal/utils/a;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/instabug/library/internal/utils/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/internal/utils/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/instabug/library/internal/utils/a$c;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/instabug/library/internal/utils/a;->CUSTOM_DEPRECATION_MESSAGE:Lcom/instabug/library/internal/utils/a;

    new-array v2, v2, [Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget-object v3, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPORT_QUESTION:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/instabug/library/internal/utils/a;->b(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;[Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;)V

    goto :goto_0

    .line 10
    :cond_1
    sget-object v0, Lcom/instabug/library/internal/utils/a;->CUSTOM_SURVEY_THANK_YOU:Lcom/instabug/library/internal/utils/a;

    new-array v2, v2, [Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget-object v3, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->SURVEYS_CUSTOM_THANKS_TITLE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/instabug/library/internal/utils/a;->b(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;[Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;)V

    goto :goto_0

    .line 11
    :cond_2
    sget-object v0, Lcom/instabug/library/internal/utils/a;->CUSTOM_SURVEY_THANK_YOU:Lcom/instabug/library/internal/utils/a;

    new-array v2, v2, [Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget-object v3, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->SURVEYS_CUSTOM_THANKS_SUBTITLE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/instabug/library/internal/utils/a;->b(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;[Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;)V

    :goto_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/internal/utils/a;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/internal/utils/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/internal/utils/a;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/internal/utils/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/internal/utils/a;->$VALUES:[Lcom/instabug/library/internal/utils/a;

    invoke-virtual {v0}, [Lcom/instabug/library/internal/utils/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/internal/utils/a;

    return-object v0
.end method


# virtual methods
.method varargs abstract a(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;[Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;)Ljava/lang/String;
.end method

.method varargs a([Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;)Ljava/lang/String;
    .locals 5

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    array-length v1, p1

    if-lez v1, :cond_0

    .line 14
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    const-string v4, "<"

    .line 15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method varargs b(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;[Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/instabug/library/internal/utils/a;->a(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;[Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "INSTABUG"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
