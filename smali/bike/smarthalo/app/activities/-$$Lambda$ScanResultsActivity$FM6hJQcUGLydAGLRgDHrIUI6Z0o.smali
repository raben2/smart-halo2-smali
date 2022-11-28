.class public final synthetic Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$FM6hJQcUGLydAGLRgDHrIUI6Z0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/activities/ScanResultsActivity;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/activities/ScanResultsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$FM6hJQcUGLydAGLRgDHrIUI6Z0o;->f$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$FM6hJQcUGLydAGLRgDHrIUI6Z0o;->f$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lbike/smarthalo/app/activities/ScanResultsActivity;->lambda$initListeners$7(Lbike/smarthalo/app/activities/ScanResultsActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
