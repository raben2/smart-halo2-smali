.class public final synthetic Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$p_99vKrb2KNMYnxxBsYLSLncwpw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# instance fields
.field private final synthetic f$0:Llayout/mapAdapter/SHGoogleMapsMap;


# direct methods
.method public synthetic constructor <init>(Llayout/mapAdapter/SHGoogleMapsMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$p_99vKrb2KNMYnxxBsYLSLncwpw;->f$0:Llayout/mapAdapter/SHGoogleMapsMap;

    return-void
.end method


# virtual methods
.method public final onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    iget-object v0, p0, Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$p_99vKrb2KNMYnxxBsYLSLncwpw;->f$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-static {v0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->lambda$setOnMapClickListener$4(Llayout/mapAdapter/SHGoogleMapsMap;Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
