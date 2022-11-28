.class public Lbike/smarthalo/app/analytics/AnalyticsEvents$PairingScreen;
.super Ljava/lang/Object;
.source "AnalyticsEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/analytics/AnalyticsEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PairingScreen"
.end annotation


# static fields
.field public static final NEW_SMARTHALO_SELECTED:Ljava/lang/String; = "new_smarthalo_selected"

.field public static final SMARTHALO_FORGOTTEN:Ljava/lang/String; = "smarthalo_forgotten"


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/analytics/AnalyticsEvents;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/analytics/AnalyticsEvents;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lbike/smarthalo/app/analytics/AnalyticsEvents$PairingScreen;->this$0:Lbike/smarthalo/app/analytics/AnalyticsEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
