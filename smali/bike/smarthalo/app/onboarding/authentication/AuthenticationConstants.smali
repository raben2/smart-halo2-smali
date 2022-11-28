.class public final Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants;
.super Ljava/lang/Object;
.source "AuthenticationConstants.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants;",
        "",
        "()V",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants$Companion;

# The value of this static final field might be set in the static constructor
.field private static final MINIMUM_AGE_FOR_USER:I = 0x10

# The value of this static final field might be set in the static constructor
.field private static final MINIMUM_PASSWORD_LENGTH:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants;->Companion:Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants$Companion;

    const/16 v0, 0x8

    .line 9
    sput v0, Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants;->MINIMUM_PASSWORD_LENGTH:I

    const/16 v0, 0x10

    .line 10
    sput v0, Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants;->MINIMUM_AGE_FOR_USER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMINIMUM_AGE_FOR_USER$cp()I
    .locals 1

    .line 7
    sget v0, Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants;->MINIMUM_AGE_FOR_USER:I

    return v0
.end method

.method public static final synthetic access$getMINIMUM_PASSWORD_LENGTH$cp()I
    .locals 1

    .line 7
    sget v0, Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants;->MINIMUM_PASSWORD_LENGTH:I

    return v0
.end method
